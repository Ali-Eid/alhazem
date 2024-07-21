import 'package:alhazem/core/bases/models/order_type_model/order_type_model.dart';
import 'package:alhazem/core/bases/models/response_model/response_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/usecases/general_search_usecases.dart';

part 'type_search_event.dart';
part 'type_search_state.dart';
part 'type_search_bloc.freezed.dart';

class TypeSearchBloc extends Bloc<TypeSearchEvent, TypeSearchState> {
  final GetTypesSearchUsecase getTypesSearchUsecase;
  List<TypeModel> typesSearch = [];
  TypeSearchBloc({required this.getTypesSearchUsecase})
      : super(const _Initial()) {
    on<TypeSearchEvent>((event, emit) async {
      await event.map(
        getTypesSearch: (value) async {
          typesSearch.clear();
          emit(const TypeSearchState.loading());
          final failureOrSuccess = await getTypesSearchUsecase.execute();
          failureOrSuccess.when(
            (success) {
              typesSearch.addAll(success.data);
              emit(TypeSearchState.loaded(types: success));
            },
            (error) {
              emit(TypeSearchState.error(message: error.message));
            },
          );
        },
      );
    });
  }
}
