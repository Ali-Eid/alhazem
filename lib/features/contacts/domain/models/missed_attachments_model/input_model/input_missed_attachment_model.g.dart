// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_missed_attachment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InputUpdateAttachmentsModelImpl _$$InputUpdateAttachmentsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InputUpdateAttachmentsModelImpl(
      input: (json['input'] as List<dynamic>?)
              ?.map((e) => InputMissedAttachmentModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$InputUpdateAttachmentsModelImplToJson(
        _$InputUpdateAttachmentsModelImpl instance) =>
    <String, dynamic>{
      'input': instance.input,
    };

_$InputMissedAttachmentModelImpl _$$InputMissedAttachmentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InputMissedAttachmentModelImpl(
      travelerId: (json['traveler_id'] as num?)?.toInt() ?? 0,
      attachments: (json['attachments'] as List<dynamic>?)
              ?.map((e) => AttachmentsCreateTravelerModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$InputMissedAttachmentModelImplToJson(
        _$InputMissedAttachmentModelImpl instance) =>
    <String, dynamic>{
      'traveler_id': instance.travelerId,
      'attachments': instance.attachments,
    };
