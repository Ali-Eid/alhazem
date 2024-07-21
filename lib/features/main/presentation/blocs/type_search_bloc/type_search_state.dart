part of 'type_search_bloc.dart';

@freezed
class TypeSearchState with _$TypeSearchState {
  const factory TypeSearchState.initial() = _Initial;
  const factory TypeSearchState.loading() = _Loading;
  const factory TypeSearchState.loaded(
      {required ResponseModel<List<TypeModel>> types}) = _Loaded;
  const factory TypeSearchState.error({required String message}) = _Error;
}
