// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_payment_model.freezed.dart';
part 'create_payment_model.g.dart';

@freezed
abstract class CreatePaymentModel with _$CreatePaymentModel {
  factory CreatePaymentModel({
    @Default(0) @JsonKey(name: "paid_total") num totalPaid,
    @Default(0) num total,
    @Default(0) @JsonKey(name: "remained_total") num remainedTotal,
  }) = _CreatePaymentModel;
  factory CreatePaymentModel.fromJson(Map<String, dynamic> json) =>
      _$CreatePaymentModelFromJson(json);
}
