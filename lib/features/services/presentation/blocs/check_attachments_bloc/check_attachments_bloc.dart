import 'package:alhazem/core/bases/models/response_model/response_model.dart';
import 'package:alhazem/features/services/domain/usecases/service_usecases.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/attachments_required_model/attachments_required_model.dart';

part 'check_attachments_event.dart';
part 'check_attachments_state.dart';
part 'check_attachments_bloc.freezed.dart';

class CheckAttachmentsBloc
    extends Bloc<CheckAttachmentsEvent, CheckAttachmentsState> {
  final CheckAttachmentsUsecase checkAttachmentsUsecase;
  CheckAttachmentsBloc({required this.checkAttachmentsUsecase})
      : super(const _Initial()) {
    on<CheckAttachmentsEvent>((event, emit) async {
      await event.map(
        checkAttachments: (value) async {
          emit(const CheckAttachmentsState.loading());
          final failureOrSuccess = await checkAttachmentsUsecase.execute(
              (serviceId: value.serviceId, travelerIds: value.travelerIds));
          failureOrSuccess.when(
            (success) {
              emit(CheckAttachmentsState.success(attachments: success));
            },
            (error) {
              emit(CheckAttachmentsState.error(message: error.message));
            },
          );
        },
      );
    });
  }
}
