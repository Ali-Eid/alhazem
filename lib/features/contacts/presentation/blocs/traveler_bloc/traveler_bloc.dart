import 'package:alhazem/core/bases/models/response_model/response_model.dart';
import 'package:alhazem/features/contacts/domain/models/input_create_traveler_model/input_create_traveler_model.dart';
import 'package:alhazem/features/contacts/domain/usecases/contact_usecases.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/contact_model/contact_model.dart';

part 'traveler_event.dart';
part 'traveler_state.dart';
part 'traveler_bloc.freezed.dart';

class TravelerBloc extends Bloc<TravelerEvent, TravelerState> {
  final CreateTravelerUsecase createTravelerUsecase;
  final UpdateTravelerUsecase updateTravelerUsecase;
  TravelerBloc(
      {required this.createTravelerUsecase,
      required this.updateTravelerUsecase})
      : super(const _Initial()) {
    on<TravelerEvent>((event, emit) async {
      await event.map(
        createTraveler: (value) async {
          emit(const TravelerState.loading());
          final failureOrSuccess =
              await createTravelerUsecase.execute(value.input);
          failureOrSuccess.when(
            (success) {
              emit(TravelerState.loaded(contact: success));
            },
            (error) {
              emit(TravelerState.error(message: error.message));
            },
          );
        },
        updateTraveler: (value) async {
          emit(const TravelerState.loading());
          final failureOrSuccess = await updateTravelerUsecase
              .execute(value.input);
          failureOrSuccess.when(
            (success) {
              emit(TravelerState.loaded(contact: success));
            },
            (error) {
              emit(TravelerState.error(message: error.message));
            },
          );
        },
      );
    });
  }
}
