// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachments_required_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttachmetnsRequiredModelImpl _$$AttachmetnsRequiredModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AttachmetnsRequiredModelImpl(
      travelerId: (json['traveler_id'] as num?)?.toInt() ?? 0,
      travelerName: json['traveler_name'] as String? ?? "",
      attachment: (json['attachments'] as List<dynamic>?)
              ?.map((e) =>
                  AttachmentsDataModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$AttachmetnsRequiredModelImplToJson(
        _$AttachmetnsRequiredModelImpl instance) =>
    <String, dynamic>{
      'traveler_id': instance.travelerId,
      'traveler_name': instance.travelerName,
      'attachments': instance.attachment,
    };

_$AttachmentsDataModelImpl _$$AttachmentsDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AttachmentsDataModelImpl(
      attachmentId: (json['att_id'] as num?)?.toInt() ?? 0,
      attachmentName: json['att_name'] as String? ?? "",
    );

Map<String, dynamic> _$$AttachmentsDataModelImplToJson(
        _$AttachmentsDataModelImpl instance) =>
    <String, dynamic>{
      'att_id': instance.attachmentId,
      'att_name': instance.attachmentName,
    };
