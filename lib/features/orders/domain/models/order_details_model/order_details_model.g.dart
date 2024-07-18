// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderDetailsModelImpl _$$OrderDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderDetailsModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? "",
      state: json['state'] as String? ?? "",
      date: json['date'] as String? ?? "",
      partnerNumber: json['partner_number'] as String? ?? "",
      partnerName: json['partner_name'] as String? ?? "",
      orderItems: (json['order_line'] as List<dynamic>?)
              ?.map((e) => OrderLineModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      returnReasons: (json['return_reason'] as List<dynamic>?)
              ?.map(
                  (e) => ReturnReasonModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$OrderDetailsModelImplToJson(
        _$OrderDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'state': instance.state,
      'date': instance.date,
      'partner_number': instance.partnerNumber,
      'partner_name': instance.partnerName,
      'order_line': instance.orderItems,
      'return_reason': instance.returnReasons,
    };

_$OrderLineModelImpl _$$OrderLineModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderLineModelImpl(
      name: json['name'] as String? ?? "",
      priceUnit: json['price_unit'] as num? ?? 0,
      customer: json['customer'] == null
          ? const CustomerModel()
          : CustomerModel.fromJson(json['customer'] as Map<String, dynamic>),
      country: json['country'] as String? ?? "",
      totalPaid: json['paid_total'] as num? ?? 0,
      total: json['total'] as num? ?? 0,
      remainedTotal: json['remained_total'] as num? ?? 0,
      variants: (json['variant_ids'] as List<dynamic>?)
              ?.map(
                  (e) => OrderVariantModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$OrderLineModelImplToJson(
        _$OrderLineModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price_unit': instance.priceUnit,
      'customer': instance.customer,
      'country': instance.country,
      'paid_total': instance.totalPaid,
      'total': instance.total,
      'remained_total': instance.remainedTotal,
      'variant_ids': instance.variants,
    };

_$OrderVariantModelImpl _$$OrderVariantModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderVariantModelImpl(
      name: json['name'] as String? ?? "",
      value: json['value'] as String? ?? "",
      price: json['price'] as num? ?? 0,
    );

Map<String, dynamic> _$$OrderVariantModelImplToJson(
        _$OrderVariantModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'price': instance.price,
    };

_$ReturnReasonModelImpl _$$ReturnReasonModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReturnReasonModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? "",
    );

Map<String, dynamic> _$$ReturnReasonModelImplToJson(
        _$ReturnReasonModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$CustomerModelImpl _$$CustomerModelImplFromJson(Map<String, dynamic> json) =>
    _$CustomerModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? "",
      mobile: json['mobile'] as String? ?? "",
      nationalNumber: json['national_number'] as String? ?? "",
    );

Map<String, dynamic> _$$CustomerModelImplToJson(_$CustomerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'mobile': instance.mobile,
      'national_number': instance.nationalNumber,
    };
