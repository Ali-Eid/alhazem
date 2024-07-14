import 'package:alhazem/core/bases/enums/entity_type.dart';
import 'package:alhazem/core/bases/models/response_model/response_model.dart';
import 'package:alhazem/features/contacts/domain/models/contact_model/contact_model.dart';
import 'package:alhazem/features/contacts/domain/usecases/contact_usecases.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_event.dart';
part 'contact_state.dart';
part 'contact_bloc.freezed.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  final GetContactsUsecase getContactsUsecase;
  int pageNum = 1;
  List<ContactModel> contacts = [];
  ContactBloc({required this.getContactsUsecase}) : super(const _Initial()) {
    on<ContactEvent>((event, emit) async {
      await event.map(
        getContact: (value) async {
          pageNum = 1;
          contacts.clear();
          emit(const ContactState.loading());
          final failureOrContacts = await getContactsUsecase
              .execute((type: value.type, page: pageNum));
          failureOrContacts.when(
            (success) {
              contacts.addAll(success.data);
              emit(ContactState.loaded(contacts: success));
            },
            (error) {
              emit(ContactState.error(message: error.message));
            },
          );
        },
        getContactPagination: (value) async {
          pageNum += 1;
          emit(ContactState.loaded(
              contacts: const ResponsePaginationModel(data: []),
              isLoading: true));
          final failureOrContacts = await getContactsUsecase
              .execute((type: value.type, page: pageNum));
          failureOrContacts.when(
            (success) {
              contacts.addAll(success.data);
              emit(ContactState.loaded(
                  contacts: ResponsePaginationModel(
                      data: contacts, meta: success.meta)));
            },
            (error) {
              emit(ContactState.error(message: error.message));
            },
          );
        },
      );
    }, transformer: droppable());
  }
}
