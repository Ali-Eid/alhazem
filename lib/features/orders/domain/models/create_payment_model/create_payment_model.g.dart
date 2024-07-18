// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatePaymentModelImpl _$$CreatePaymentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreatePaymentModelImpl(
      totalPaid: json['paid_total'] as num? ?? 0,
      total: json['total'] as num? ?? 0,
      remainedTotal: json['remained_total'] as num? ?? 0,
    );

Map<String, dynamic> _$$CreatePaymentModelImplToJson(
        _$CreatePaymentModelImpl instance) =>
    <String, dynamic>{
      'paid_total': instance.totalPaid,
      'total': instance.total,
      'remained_total': instance.remainedTotal,
    };
