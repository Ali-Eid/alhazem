import 'package:freezed_annotation/freezed_annotation.dart';

part 'type_service_model.freezed.dart';
part 'type_service_model.g.dart';

@freezed
abstract class TypeServiceModel with _$TypeServiceModel {
  factory TypeServiceModel({
    @Default(0) int id,
    @Default("") String name,
    @Default("") String image,
  }) = _TypeServiceModel;
  factory TypeServiceModel.fromJson(Map<String, dynamic> json) =>
      _$TypeServiceModelFromJson(json);
}
