part of 'static_bloc.dart';

@freezed
class StaticState with _$StaticState {
  const factory StaticState.initial() = _Initial;
  const factory StaticState.loading() = _Loading;
  const factory StaticState.loaded({
    @Default([]) List<StaticModel> attachmentsType,
    @Default([]) List<StaticModel> countries,
    @Default([]) List<StaticModel> states,
    @Default([]) List<StaticModel> offices,
  }) = _Loaded;
  const factory StaticState.error({required String message}) = _Error;
}
