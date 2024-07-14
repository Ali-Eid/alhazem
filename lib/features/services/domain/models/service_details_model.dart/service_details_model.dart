// ignore_for_file: invalid_annotation_target

import 'package:alhazem/core/bases/models/static_models/static_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_details_model.freezed.dart';
part 'service_details_model.g.dart';

@freezed
abstract class ServiceDetailsModel with _$ServiceDetailsModel {
  factory ServiceDetailsModel({
    @Default(0) int id,
    @Default("") String name,
    @Default(0) double price,
    @Default("") String country,
    @Default("") String type,
    @Default([]) List<DetailsServiceModel> details,
    @Default([]) List<VariantsModel> variants,
  }) = _ServiceDetailsModel;
  factory ServiceDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceDetailsModelFromJson(json);
}

@freezed
abstract class DetailsServiceModel with _$DetailsServiceModel {
  factory DetailsServiceModel({
    @Default("") String name,
    @Default("") String details,
    @Default(0) double price,
    @Default("") @JsonKey(name: "currency_name") String currencyName,
  }) = _DetailsServiceModel;
  factory DetailsServiceModel.fromJson(Map<String, dynamic> json) =>
      _$DetailsServiceModelFromJson(json);
}

@freezed
abstract class VariantsModel with _$VariantsModel {
  factory VariantsModel({
    @Default("") String name,
    @Default(0) @JsonKey(name: "attribute_id") int attributeId,
    @Default([]) List<VariantValueModel> values,
  }) = _VariantsModel;
  factory VariantsModel.fromJson(Map<String, dynamic> json) =>
      _$VariantsModelFromJson(json);
}

@freezed
abstract class VariantValueModel with _$VariantValueModel {
  const factory VariantValueModel({
    @Default(0) int id,
    @Default(0) @JsonKey(name: "attribute_id") int attributeId,
    @Default("") String name,
    @Default(0) double price,
  }) = _VariantValueModel;
  factory VariantValueModel.fromJson(Map<String, dynamic> json) =>
      _$VariantValueModelFromJson(json);
}
