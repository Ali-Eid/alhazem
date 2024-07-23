// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'attachments_required_model.freezed.dart';
part 'attachments_required_model.g.dart';

@freezed
abstract class AttachmentsRequiredModel with _$AttachmentsRequiredModel {
  factory AttachmentsRequiredModel(
      {@Default(0) @JsonKey(name: "traveler_id") int travelerId,
      @Default("") @JsonKey(name: "traveler_name") String travelerName,
      @Default([])
      @JsonKey(name: "attachments")
      List<AttachmentsDataModel> attachment}) = _AttachmetnsRequiredModel;
  factory AttachmentsRequiredModel.fromJson(Map<String, dynamic> json) =>
      _$AttachmentsRequiredModelFromJson(json);
}

@freezed
abstract class AttachmentsDataModel with _$AttachmentsDataModel {
  const factory AttachmentsDataModel({
    @Default(0) @JsonKey(name: "att_id") int attachmentId,
    @Default("") @JsonKey(name: "att_name") String attachmentName,
  }) = _AttachmentsDataModel;
  factory AttachmentsDataModel.fromJson(Map<String, dynamic> json) =>
      _$AttachmentsDataModelFromJson(json);
}
