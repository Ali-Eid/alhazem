import 'package:freezed_annotation/freezed_annotation.dart';

import '../../input_create_traveler_model/input_create_traveler_model.dart';

part 'input_missed_attachment_model.freezed.dart';
part 'input_missed_attachment_model.g.dart';

@freezed
abstract class InputUpdateAttachmentsModel with _$InputUpdateAttachmentsModel {
  const factory InputUpdateAttachmentsModel(
      {@Default(0) @JsonKey(name: "order_id") int orderId,
      @Default([])
      @JsonKey(name: "input")
      List<InputMissedAttachmentModel> input}) = _InputUpdateAttachmentsModel;
  factory InputUpdateAttachmentsModel.fromJson(Map<String, dynamic> json) =>
      _$InputUpdateAttachmentsModelFromJson(json);
}

@freezed
abstract class InputMissedAttachmentModel with _$InputMissedAttachmentModel {
  const factory InputMissedAttachmentModel({
    @Default(0) @JsonKey(name: "traveler_id") int travelerId,
    @Default([]) List<AttachmentsCreateTravelerModel> attachments,
  }) = _InputMissedAttachmentModel;
  factory InputMissedAttachmentModel.fromJson(Map<String, dynamic> json) =>
      _$InputMissedAttachmentModelFromJson(json);
}
