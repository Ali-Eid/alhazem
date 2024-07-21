import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_type_model.freezed.dart';
part 'order_type_model.g.dart';

@freezed
abstract class TypeModel with _$TypeModel {
  factory TypeModel({
    @Default("") String key,
    @Default("") String value,
  }) = _TypeModel;
  factory TypeModel.fromJson(Map<String, dynamic> json) =>
      _$TypeModelFromJson(json);
}
