import 'package:alhazem/core/bases/enums/entity_type.dart';
import 'package:alhazem/core/bases/models/pagination_model/pagination_model.dart';
import 'package:alhazem/core/bases/models/response_model/response_model.dart';
import 'package:alhazem/features/contacts/domain/models/contact_details_model/contact_details_model.dart';
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
  final GetContactByIdUsecase getContactByIdUsecase;
  String? type;
  int? totalPages;
  int totalCounts = 0;
  int? currentpage;
  List<ContactModel> contacts = [];
  ContactBloc(
      {required this.getContactsUsecase, required this.getContactByIdUsecase})
      : super(const _Initial()) {
    on<ContactEvent>((event, emit) async {
      await event.map(
        getContact: (value) async {
          contacts.clear();
          type = value.type.name;
          emit(const ContactState.loading());
          final failureOrContacts = await getContactsUsecase
              .execute((type: value.type, page: value.page));
          failureOrContacts.when(
            (success) {
              contacts.addAll(success.data);
              totalPages = success.meta.totalPages;
              totalCounts = success.meta.itemsCount;
              currentpage = success.meta.currentPage;
              emit(ContactState.loaded(contacts: success));
            },
            (error) {
              emit(ContactState.error(message: error.message));
            },
          );
        },
        getContactById: (value) async {
          emit(const ContactState.loading());
          final failureOrContact =
              await getContactByIdUsecase.execute(value.contactId);
          failureOrContact.when(
            (success) {
              emit(ContactState.loadedContactDetails(contact: success));
            },
            (error) {
              emit(ContactState.error(message: error.message));
            },
          );
        },
        editContact: (value) async {
          emit(const ContactState.loading());
          var index =
              contacts.indexWhere((element) => element.id == value.model.id);
          contacts[index] = value.model;
          emit(ContactState.loaded(
              contacts: ResponsePaginationModel<List<ContactModel>>(
                  meta: PaginationModel(
                      currentPage: currentpage ?? 0,
                      itemsCount: totalCounts,
                      totalPages: totalPages ?? 0),
                  data: contacts)));
        },
      );
    }, transformer: droppable());
  }
}
