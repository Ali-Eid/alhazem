import 'package:alhazem/core/bases/models/order_type_model/order_type_model.dart';
import 'package:alhazem/core/bases/models/response_model/response_model.dart';
import 'package:alhazem/core/bases/models/static_models/static_model.dart';
import 'package:alhazem/features/orders/domain/usecases/order_usecases.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'currencies_event.dart';
part 'currencies_state.dart';
part 'currencies_bloc.freezed.dart';

class CurrenciesBloc extends Bloc<CurrenciesEvent, CurrenciesState> {
  final GetCurrenciesUsecase getCurrenciesUsecase;
  final GetTypeOrdersUsecase getTypeOrdersUsecase;
  Set<StaticModel> currencies = {};
  Set<TypeModel> orderTypes = {};
  StaticModel? currencySelected;
  TypeModel? orderTypeSelected;
  CurrenciesBloc(
      {required this.getCurrenciesUsecase, required this.getTypeOrdersUsecase})
      : super(const CurrenciesState.loading()) {
    on<CurrenciesEvent>((event, emit) async {
      await event.map(
        getCurrencies: (value) async {
          emit(const CurrenciesState.loading());
          final failureOrCurrencies = await getCurrenciesUsecase.execute();
          failureOrCurrencies.when(
            (success) {
              currencies.clear();
              currencies.addAll(success.data);
              currencySelected =
                  currencies.isNotEmpty ? currencies.first : null;
              emit(CurrenciesState.loadedCurrencies(currencies: success));
            },
            (error) {
              emit(CurrenciesState.error(message: error.message));
            },
          );
        },
        getOrderTypes: (value) async {
          emit(const CurrenciesState.loading());
          final failureOrCurrencies = await getTypeOrdersUsecase.execute();
          failureOrCurrencies.when(
            (success) {
              orderTypes.clear();
              orderTypes.addAll(success.data);
              orderTypeSelected =
                  currencies.isNotEmpty ? orderTypes.first : null;
              emit(CurrenciesState.loadedOrderTypes(types: success));
            },
            (error) {
              emit(CurrenciesState.error(message: error.message));
            },
          );
        },
      );
    });
  }
}
