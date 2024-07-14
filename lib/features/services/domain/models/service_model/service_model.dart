import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_model.freezed.dart';
part 'service_model.g.dart';

@freezed
abstract class ServiceModel with _$ServiceModel {
  factory ServiceModel({
    @Default(0) int id,
    @Default("") String name,
    @Default("") String currency,
    @Default(0) double price,
    @Default("") String country,
    @Default("") String type,
  }) = _ServiceModel;
  factory ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceModelFromJson(json);
}
