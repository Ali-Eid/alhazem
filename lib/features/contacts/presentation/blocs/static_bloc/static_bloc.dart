import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/bases/models/static_models/static_model.dart';
import '../../../domain/usecases/contact_usecases.dart';

part 'static_event.dart';
part 'static_state.dart';
part 'static_bloc.freezed.dart';

class StaticBloc extends Bloc<StaticEvent, StaticState> {
  final GetAttachmentsTypeUsecase getAttachmentsTypeUsecase;
  final GetCountriesUsecase getCountriesUsecase;
  final GetStatesUsecase getStatesUsecase;
  final GetOfficesUsecase getOfficesUsecase;
  List<StaticModel> countries = [];
  List<StaticModel> attachmentsTypes = [];
  List<StaticModel> offices = [];
  StaticBloc({
    required this.getAttachmentsTypeUsecase,
    required this.getCountriesUsecase,
    required this.getStatesUsecase,
    required this.getOfficesUsecase,
  }) : super(const _Initial()) {
    on<StaticEvent>((event, emit) async {
      await event.map(
        getAttachmentsType: (value) async {
          attachmentsTypes.clear();
          emit(const StaticState.loading());
          final failureOrSuccess = await getAttachmentsTypeUsecase.execute();
          failureOrSuccess.when(
            (success) {
              attachmentsTypes.addAll(success.data);
              emit(StaticState.loaded(attachmentsType: success.data));
            },
            (error) {
              emit(StaticState.error(message: error.message));
            },
          );
        },
        getCountries: (value) async {
          countries.clear();
          emit(const StaticState.loading());
          final failureOrSuccess = await getCountriesUsecase.execute();
          failureOrSuccess.when(
            (success) {
              countries.addAll(success.data);
              emit(StaticState.loaded(countries: success.data));
            },
            (error) {
              emit(StaticState.error(message: error.message));
            },
          );
        },
        getStates: (value) async {
          emit(const StaticState.loading());
          final failureOrSuccess =
              await getStatesUsecase.execute(value.countryId);
          failureOrSuccess.when(
            (success) {
              emit(StaticState.loaded(states: success.data));
            },
            (error) {
              emit(StaticState.error(message: error.message));
            },
          );
        },
        getOffices: (value) async {
          offices.clear();
          emit(const StaticState.loading());
          final failureOrSuccess = await getOfficesUsecase.execute();
          failureOrSuccess.when(
            (success) {
              offices.addAll(success.data);
              offices.insert(0, StaticModel(id: 0, name: "بلا مكتب"));
              emit(StaticState.loaded(offices: success.data));
            },
            (error) {
              emit(StaticState.error(message: error.message));
            },
          );
        },
      );
    });
  }
}
