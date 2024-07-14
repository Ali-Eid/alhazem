part of 'currencies_bloc.dart';

@freezed
class CurrenciesState with _$CurrenciesState {
  const factory CurrenciesState.loading() = _Loading;
  const factory CurrenciesState.loadedCurrencies(
          {required ResponseModel<List<StaticModel>> currencies}) =
      _LoadedCurrencies;
  const factory CurrenciesState.loadedOrderTypes(
      {required ResponseModel<List<OrderTypeModel>> types}) = _LoadedOrderTypes;
  const factory CurrenciesState.error({required String message}) = _Error;
}
