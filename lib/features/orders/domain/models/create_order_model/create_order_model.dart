import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_order_model.freezed.dart';
part 'create_order_model.g.dart';

@freezed
abstract class CreateOrderModel with _$CreateOrderModel {
  factory CreateOrderModel(
          {@Default(0) int id,
          @Default("") String name,
          @Default("") String state,
          @Default([]) List<AttachmentsMissedModel> attachments}) =
      _CreateOrderModel;
  factory CreateOrderModel.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderModelFromJson(json);
}

@freezed
abstract class AttachmentsMissedModel with _$AttachmentsMissedModel {
  const factory AttachmentsMissedModel(
      {@Default(0) @JsonKey(name: "traveler_id") int travelerId,
      @Default("") @JsonKey(name: "traveler_name") String travelerName,
      @Default([])
      @JsonKey(name: "attachments")
      List<AttachmentsModel> attachment}) = _AttachmentsMissedModel;
  factory AttachmentsMissedModel.fromJson(Map<String, dynamic> json) =>
      _$AttachmentsMissedModelFromJson(json);
}

@freezed
abstract class AttachmentsModel with _$AttachmentsModel {
  const factory AttachmentsModel({
    @Default(0) @JsonKey(name: "att_id") int attachmentId,
    @Default("") @JsonKey(name: "att_name") String attachmentName,
  }) = _AttachmentsModel;
  factory AttachmentsModel.fromJson(Map<String, dynamic> json) =>
      _$AttachmentsModelFromJson(json);
}
