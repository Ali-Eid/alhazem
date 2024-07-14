import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_order_model.freezed.dart';
part 'create_order_model.g.dart';

@freezed
abstract class CreateOrderModel with _$CreateOrderModel {
  factory CreateOrderModel({
    @Default(0) int id,
    @Default("") String name,
    @Default("") String state,
  }) = _CreateOrderModel;
  factory CreateOrderModel.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderModelFromJson(json);
}
