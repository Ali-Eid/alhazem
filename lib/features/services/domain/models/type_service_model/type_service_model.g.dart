// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TypeServiceModelImpl _$$TypeServiceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TypeServiceModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? "",
      image: json['image'] as String? ?? "",
    );

Map<String, dynamic> _$$TypeServiceModelImplToJson(
        _$TypeServiceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };
