// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../contacts/domain/models/missed_attachments_model/input_model/input_missed_attachment_model.dart';

part 'input_create_order_model.freezed.dart';
part 'input_create_order_model.g.dart';

@freezed
abstract class InputCreateOrderModel with _$InputCreateOrderModel {
  factory InputCreateOrderModel(
      {@Default(0) @JsonKey(name: "partner_id") int partnerId,
      @Default([]) List<TravelerInputOrderModel> travelers,
      @Default(0) @JsonKey(name: "service_id") int serviceId,
      @Default([]) @JsonKey(name: "variant_ids") List<int> variantIds,
      @Default(0) double price,
      @Default(0) int currency,
      @Default(0) @JsonKey(name: "total_paid") double totalPaid,
      @Default([])
      List<InputMissedAttachmentModel> input}) = _InputCreateOrderModel;
  factory InputCreateOrderModel.fromJson(Map<String, dynamic> json) =>
      _$InputCreateOrderModelFromJson(json);
}

@freezed
abstract class TravelerInputOrderModel with _$TravelerInputOrderModel {
  const factory TravelerInputOrderModel({
    @Default(0) @JsonKey(name: "travel_id") int travelId,
  }) = _TravelerInputOrderModel;
  factory TravelerInputOrderModel.fromJson(Map<String, dynamic> json) =>
      _$TravelerInputOrderModelFromJson(json);
}
