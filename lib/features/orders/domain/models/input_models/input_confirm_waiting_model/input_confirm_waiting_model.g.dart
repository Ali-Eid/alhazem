// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_confirm_waiting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InputConfirmWaitingModelImpl _$$InputConfirmWaitingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InputConfirmWaitingModelImpl(
      orderId: (json['order_id'] as num?)?.toInt() ?? 0,
      totalPaid: (json['total_paid'] as num?)?.toDouble() ?? 0,
      currency: (json['currency'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$InputConfirmWaitingModelImplToJson(
        _$InputConfirmWaitingModelImpl instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'total_paid': instance.totalPaid,
      'currency': instance.currency,
    };
