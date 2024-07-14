// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceDetailsModelImpl _$$ServiceDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ServiceDetailsModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? "",
      price: (json['price'] as num?)?.toDouble() ?? 0,
      country: json['country'] as String? ?? "",
      type: json['type'] as String? ?? "",
      details: (json['details'] as List<dynamic>?)
              ?.map((e) =>
                  DetailsServiceModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      variants: (json['variants'] as List<dynamic>?)
              ?.map((e) => VariantsModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ServiceDetailsModelImplToJson(
        _$ServiceDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'country': instance.country,
      'type': instance.type,
      'details': instance.details,
      'variants': instance.variants,
    };

_$DetailsServiceModelImpl _$$DetailsServiceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailsServiceModelImpl(
      name: json['name'] as String? ?? "",
      details: json['details'] as String? ?? "",
      price: (json['price'] as num?)?.toDouble() ?? 0,
      currencyName: json['currency_name'] as String? ?? "",
    );

Map<String, dynamic> _$$DetailsServiceModelImplToJson(
        _$DetailsServiceModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'details': instance.details,
      'price': instance.price,
      'currency_name': instance.currencyName,
    };

_$VariantsModelImpl _$$VariantsModelImplFromJson(Map<String, dynamic> json) =>
    _$VariantsModelImpl(
      name: json['name'] as String? ?? "",
      attributeId: (json['attribute_id'] as num?)?.toInt() ?? 0,
      values: (json['values'] as List<dynamic>?)
              ?.map(
                  (e) => VariantValueModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$VariantsModelImplToJson(_$VariantsModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'attribute_id': instance.attributeId,
      'values': instance.values,
    };

_$VariantValueModelImpl _$$VariantValueModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VariantValueModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      attributeId: (json['attribute_id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? "",
      price: (json['price'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$VariantValueModelImplToJson(
        _$VariantValueModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attribute_id': instance.attributeId,
      'name': instance.name,
      'price': instance.price,
    };
