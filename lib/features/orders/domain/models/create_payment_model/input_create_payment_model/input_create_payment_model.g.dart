// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_create_payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InputCreatePaymentModelImpl _$$InputCreatePaymentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InputCreatePaymentModelImpl(
      orderId: (json['order_id'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      currency: (json['currency'] as num).toInt(),
    );

Map<String, dynamic> _$$InputCreatePaymentModelImplToJson(
        _$InputCreatePaymentModelImpl instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'total': instance.total,
      'currency': instance.currency,
    };
