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
  TravelerBloc({required this.createTravelerUsecase}) : super(_Initial()) {
    on<TravelerEvent>((event, emit) async {
      await event.map(
        createTraveler: (value) async {
          emit(TravelerState.loading());
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
      );
    });
  }
}
