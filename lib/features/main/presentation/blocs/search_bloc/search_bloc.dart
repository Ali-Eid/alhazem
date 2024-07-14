import 'package:alhazem/core/bases/models/response_model/response_model.dart';
import 'package:alhazem/features/contacts/domain/models/contact_model/contact_model.dart';
import 'package:alhazem/features/contacts/domain/usecases/contact_usecases.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchContactsUsecase searchContactsUsecase;
  int pageNum = 1;
  bool hasReach = false;
  List<ContactModel> contacts = [];
  SearchBloc({required this.searchContactsUsecase}) : super(const _Initial()) {
    on<SearchEvent>((event, emit) async {
      await event.map(
        searchContract: (value) async {
          pageNum = 1;
          contacts.clear();
          emit(const SearchState.laoding());
          final failureOrContracts = await searchContactsUsecase
              .execute((name: value.name, page: pageNum));
          failureOrContracts.when(
            (success) {
              hasReach = pageNum == success.meta.totalPages;
              contacts.addAll(success.data);
              emit(SearchState.loaded(contacts: success));
            },
            (error) {
              emit(SearchState.error(message: error.message));
            },
          );
        },
        searchContractPagination: hasReach
            ? (value) {}
            : (value) async {
                pageNum += 1;
                final failureOrContracts = await searchContactsUsecase
                    .execute((name: value.name, page: pageNum));
                failureOrContracts.when(
                  (success) {
                    hasReach = pageNum == success.meta.totalPages;
                    contacts.addAll(success.data);
                    emit(SearchState.loaded(
                        contacts: ResponsePaginationModel(data: contacts)));
                  },
                  (error) {
                    emit(SearchState.error(message: error.message));
                  },
                );
              },
      );
    });
  }
}
