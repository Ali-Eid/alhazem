part of 'check_price_bloc.dart';

@freezed
class CheckPriceState with _$CheckPriceState {
  const factory CheckPriceState.initial() = _Initial;
  const factory CheckPriceState.loading() = _Loading;
  const factory CheckPriceState.loaded({required double price}) = _Loaded;
  const factory CheckPriceState.error({required String message}) = _Error;
}
