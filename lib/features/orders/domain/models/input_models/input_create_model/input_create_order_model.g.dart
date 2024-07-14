// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_create_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InputCreateOrderModelImpl _$$InputCreateOrderModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InputCreateOrderModelImpl(
      partnerId: (json['partner_id'] as num?)?.toInt() ?? 0,
      travelers: (json['travelers'] as List<dynamic>?)
              ?.map((e) =>
                  TravelerInputOrderModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      serviceId: (json['service_id'] as num?)?.toInt() ?? 0,
      variantIds: (json['variant_ids'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      price: (json['price'] as num?)?.toDouble() ?? 0,
      currency: (json['currency'] as num?)?.toInt() ?? 0,
      totalPaid: (json['total_paid'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$InputCreateOrderModelImplToJson(
        _$InputCreateOrderModelImpl instance) =>
    <String, dynamic>{
      'partner_id': instance.partnerId,
      'travelers': instance.travelers,
      'service_id': instance.serviceId,
      'variant_ids': instance.variantIds,
      'price': instance.price,
      'currency': instance.currency,
      'total_paid': instance.totalPaid,
    };

_$TravelerInputOrderModelImpl _$$TravelerInputOrderModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TravelerInputOrderModelImpl(
      travelId: (json['travel_id'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$TravelerInputOrderModelImplToJson(
        _$TravelerInputOrderModelImpl instance) =>
    <String, dynamic>{
      'travel_id': instance.travelId,
    };
