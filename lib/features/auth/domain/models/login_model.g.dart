// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginModelImpl _$$LoginModelImplFromJson(Map<String, dynamic> json) =>
    _$LoginModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      email: json['email'] as String? ?? "",
      phone: json['phone'] as String? ?? "",
      token: json['token'] as String? ?? "",
    );

Map<String, dynamic> _$$LoginModelImplToJson(_$LoginModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'phone': instance.phone,
      'token': instance.token,
    };

_$AddressModelImpl _$$AddressModelImplFromJson(Map<String, dynamic> json) =>
    _$AddressModelImpl(
      city: json['city'] as String? ?? "",
      street: json['street'] as String? ?? "",
      street2: json['street_2'] as String? ?? "",
    );

Map<String, dynamic> _$$AddressModelImplToJson(_$AddressModelImpl instance) =>
    <String, dynamic>{
      'city': instance.city,
      'street': instance.street,
      'street_2': instance.street2,
    };
