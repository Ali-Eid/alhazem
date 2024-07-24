// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_lead_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateLeadModelImpl _$$CreateLeadModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateLeadModelImpl(
      leadId: (json['lead_id'] as num?)?.toInt() ?? 0,
      partnerId: (json['partner_id'] as num?)?.toInt() ?? 0,
      leadName: json['lead_name'] as String? ?? "",
    );

Map<String, dynamic> _$$CreateLeadModelImplToJson(
        _$CreateLeadModelImpl instance) =>
    <String, dynamic>{
      'lead_id': instance.leadId,
      'partner_id': instance.partnerId,
      'lead_name': instance.leadName,
    };
