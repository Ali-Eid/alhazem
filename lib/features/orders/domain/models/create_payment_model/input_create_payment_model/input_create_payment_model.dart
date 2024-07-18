import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_create_payment_model.freezed.dart';
part 'input_create_payment_model.g.dart';

@freezed
abstract class InputCreatePaymentModel with _$InputCreatePaymentModel {
  factory InputCreatePaymentModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: "order_id") required int orderId,
    required int total,
    required int currency,
  }) = _InputCreatePaymentModel;
  factory InputCreatePaymentModel.fromJson(Map<String, dynamic> json) =>
      _$InputCreatePaymentModelFromJson(json);
}
