import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_confirm_waiting_model.freezed.dart';
part 'input_confirm_waiting_model.g.dart';

@freezed
abstract class InputConfirmWaitingModel with _$InputConfirmWaitingModel {
  factory InputConfirmWaitingModel({
    @Default(0) @JsonKey(name: "order_id") int orderId,
    @Default(0) @JsonKey(name: "total_paid") double totalPaid,
    @Default(0) int currency,
  }) = _InputConfirmWaitingModel;
  factory InputConfirmWaitingModel.fromJson(Map<String, dynamic> json) =>
      _$InputConfirmWaitingModelFromJson(json);
}
