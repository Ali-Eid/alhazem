import 'package:alhazem/core/bases/models/response_model/response_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../contacts/domain/models/missed_attachments_model/input_model/input_missed_attachment_model.dart';
import '../../../../contacts/domain/usecases/contact_usecases.dart';

part 'update_attachments_event.dart';
part 'update_attachments_state.dart';
part 'update_attachments_bloc.freezed.dart';

class UpdateAttachmentsBloc
    extends Bloc<UpdateAttachmentsEvent, UpdateAttachmentsState> {
  final UpdateAttachmentsUsecase updateAttachmentsUsecase;
  UpdateAttachmentsBloc({required this.updateAttachmentsUsecase})
      : super(const _Initial()) {
    on<UpdateAttachmentsEvent>((event, emit) async {
      await event.map(
        updateAttachments: (value) async {
          emit(const UpdateAttachmentsState.loading());
          final failureOrSuccess =
              await updateAttachmentsUsecase.execute(value.input);
          failureOrSuccess.when(
            (success) {
              emit(UpdateAttachmentsState.success(success: success));
            },
            (error) {
              emit(UpdateAttachmentsState.error(message: error.message));
            },
          );
        },
      );
    });
  }
}
