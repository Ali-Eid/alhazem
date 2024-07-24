// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
abstract class OrderModel with _$OrderModel {
  factory OrderModel({
    @Default(0) int id,
    @Default("") String name,
    @Default("") String state,
    @Default("") String date,
    @Default("") @JsonKey(name: "partner_number") String partnerNumber,
    @Default("") @JsonKey(name: "partner_name") String partnerName,
    @Default(0) @JsonKey(name: "paid_total") num totalPaid,
    @Default(false) @JsonKey(name: "is_office") bool isOffice,
    @Default(0) num total,
    @Default(0) @JsonKey(name: "remained_total") num remainedTotal,
  }) = _OrderModel;
  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}
