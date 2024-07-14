part of 'check_price_bloc.dart';

@freezed
class CheckPriceEvent with _$CheckPriceEvent {
  const factory CheckPriceEvent.checkPrice(
      {required VariantValueModel variant}) = _CheckPrice;
  const factory CheckPriceEvent.checkPriceInitial() = _CheckPriceInitial;
}
