// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactModelImpl _$$ContactModelImplFromJson(Map<String, dynamic> json) =>
    _$ContactModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? "",
      type: json['type'] as String? ?? "",
      phone: json['phone'] as String? ?? "",
      isLead: json['is_lead'] as bool? ?? false,
      whatsappNumber: json['whatsapp_number'] as String? ?? "",
    );

Map<String, dynamic> _$$ContactModelImplToJson(_$ContactModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'phone': instance.phone,
      'is_lead': instance.isLead,
      'whatsapp_number': instance.whatsappNumber,
    };
