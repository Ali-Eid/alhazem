import 'package:alhazem/core/bases/models/response_model/response_model.dart';
import 'package:alhazem/features/contacts/domain/usecases/contact_usecases.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/crate_lead_model/create_lead_model.dart';
import '../../../domain/models/input_lead_model/input_lead_model.dart';

part 'lead_contact_event.dart';
part 'lead_contact_state.dart';
part 'lead_contact_bloc.freezed.dart';

class LeadContactBloc extends Bloc<LeadContactEvent, LeadContactState> {
  final CreateLeadUsecase createLeadUsecase;
  int? leadId;
  int? partnerId;
  String? leadName;
  LeadContactBloc({required this.createLeadUsecase}) : super(const _Initial()) {
    on<LeadContactEvent>((event, emit) async {
      await event.map(
        createLead: (value) async {
          emit(const LeadContactState.loading());
          final failureOrSuccess = await createLeadUsecase.execute(value.input);
          failureOrSuccess.when(
            (success) {
              leadId = success.data.leadId;
              partnerId = success.data.partnerId;
              leadName = success.data.leadName;
              emit(LeadContactState.loaded(success: success));
            },
            (error) {
              emit(LeadContactState.error(message: error.message));
            },
          );
        },
        logoutLead: (value) async {
          emit(const LeadContactState.loading());
          leadId = null;
          leadName = null;
          partnerId = null;
          emit(const LeadContactState.deletedLead());
        },
      );
    });
  }
}
