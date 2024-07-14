// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateOrderModelImpl _$$CreateOrderModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateOrderModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? "",
      state: json['state'] as String? ?? "",
    );

Map<String, dynamic> _$$CreateOrderModelImplToJson(
        _$CreateOrderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'state': instance.state,
    };
