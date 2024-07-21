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
      attachments: (json['attachments'] as List<dynamic>?)
              ?.map((e) =>
                  AttachmentsMissedModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CreateOrderModelImplToJson(
        _$CreateOrderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'state': instance.state,
      'attachments': instance.attachments,
    };

_$AttachmentsMissedModelImpl _$$AttachmentsMissedModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AttachmentsMissedModelImpl(
      travelerId: (json['traveler_id'] as num?)?.toInt() ?? 0,
      travelerName: json['traveler_name'] as String? ?? "",
      attachment: (json['attachments'] as List<dynamic>?)
              ?.map((e) => AttachmentsModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$AttachmentsMissedModelImplToJson(
        _$AttachmentsMissedModelImpl instance) =>
    <String, dynamic>{
      'traveler_id': instance.travelerId,
      'traveler_name': instance.travelerName,
      'attachments': instance.attachment,
    };

_$AttachmentsModelImpl _$$AttachmentsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AttachmentsModelImpl(
      attachmentId: (json['att_id'] as num?)?.toInt() ?? 0,
      attachmentName: json['att_name'] as String? ?? "",
    );

Map<String, dynamic> _$$AttachmentsModelImplToJson(
        _$AttachmentsModelImpl instance) =>
    <String, dynamic>{
      'att_id': instance.attachmentId,
      'att_name': instance.attachmentName,
    };
