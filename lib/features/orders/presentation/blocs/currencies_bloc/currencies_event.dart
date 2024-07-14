part of 'currencies_bloc.dart';

@freezed
class CurrenciesEvent with _$CurrenciesEvent {
  const factory CurrenciesEvent.getCurrencies() = _GetCurrencies;
  const factory CurrenciesEvent.getOrderTypes() = _GetOrderTypes;
}
