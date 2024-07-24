// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? "",
      state: json['state'] as String? ?? "",
      date: json['date'] as String? ?? "",
      partnerNumber: json['partner_number'] as String? ?? "",
      partnerName: json['partner_name'] as String? ?? "",
      totalPaid: json['paid_total'] as num? ?? 0,
      isOffice: json['is_office'] as bool? ?? false,
      total: json['total'] as num? ?? 0,
      remainedTotal: json['remained_total'] as num? ?? 0,
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'state': instance.state,
      'date': instance.date,
      'partner_number': instance.partnerNumber,
      'partner_name': instance.partnerName,
      'paid_total': instance.totalPaid,
      'is_office': instance.isOffice,
      'total': instance.total,
      'remained_total': instance.remainedTotal,
    };
