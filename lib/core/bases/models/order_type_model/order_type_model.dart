import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_type_model.freezed.dart';
part 'order_type_model.g.dart';

@freezed
abstract class OrderTypeModel with _$OrderTypeModel {
  factory OrderTypeModel({
    @Default("") String key,
    @Default("") String value,
  }) = _OrderTypeModel;
  factory OrderTypeModel.fromJson(Map<String, dynamic> json) =>
      _$OrderTypeModelFromJson(json);
}
