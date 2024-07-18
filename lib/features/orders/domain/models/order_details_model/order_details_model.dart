// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_details_model.freezed.dart';
part 'order_details_model.g.dart';

@freezed
abstract class OrderDetailsModel with _$OrderDetailsModel {
  factory OrderDetailsModel({
    @Default(0) int id,
    @Default("") String name,
    @Default("") String state,
    @Default("") String date,
    @Default("") @JsonKey(name: "partner_number") String partnerNumber,
    @Default("") @JsonKey(name: "partner_name") String partnerName,
    @Default([]) @JsonKey(name: "order_line") List<OrderLineModel> orderItems,
    @Default([])
    @JsonKey(name: "return_reason")
    List<ReturnReasonModel> returnReasons,
  }) = _OrderDetailsModel;
  factory OrderDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsModelFromJson(json);
}

@freezed
abstract class OrderLineModel with _$OrderLineModel {
  const factory OrderLineModel({
    @Default("") String name,
    @Default(0) @JsonKey(name: "price_unit") num priceUnit,
    @Default(CustomerModel()) @JsonKey(name: "customer") CustomerModel customer,
    @Default("") String country,
    @Default(0) @JsonKey(name: "paid_total") num totalPaid,
    @Default(0) num total,
    @Default(0) @JsonKey(name: "remained_total") num remainedTotal,
    @Default([]) @JsonKey(name: "variant_ids") List<OrderVariantModel> variants,
  }) = _OrderLineModel;
  factory OrderLineModel.fromJson(Map<String, dynamic> json) =>
      _$OrderLineModelFromJson(json);
}

@freezed
abstract class OrderVariantModel with _$OrderVariantModel {
  const factory OrderVariantModel({
    @Default("") String name,
    @Default("") String value,
    @Default(0) num price,
  }) = _OrderVariantModel;
  factory OrderVariantModel.fromJson(Map<String, dynamic> json) =>
      _$OrderVariantModelFromJson(json);
}

@freezed
abstract class ReturnReasonModel with _$ReturnReasonModel {
  const factory ReturnReasonModel({
    @Default(0) int id,
    @Default("") String name,
  }) = _ReturnReasonModel;
  factory ReturnReasonModel.fromJson(Map<String, dynamic> json) =>
      _$ReturnReasonModelFromJson(json);
}

@freezed
abstract class CustomerModel with _$CustomerModel {
  const factory CustomerModel({
    @Default(0) int id,
    @Default("") String name,
    @Default("") String mobile,
    @Default("") @JsonKey(name: "national_number") String nationalNumber,
  }) = _CustomerModel;
  factory CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);
}
