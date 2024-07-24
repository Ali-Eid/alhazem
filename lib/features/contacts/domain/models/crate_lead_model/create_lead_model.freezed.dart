// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_lead_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateLeadModel _$CreateLeadModelFromJson(Map<String, dynamic> json) {
  return _CreateLeadModel.fromJson(json);
}

/// @nodoc
mixin _$CreateLeadModel {
// ignore: invalid_annotation_target
  @JsonKey(name: "lead_id")
  int get leadId =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "partner_id")
  int get partnerId =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "lead_name")
  String get leadName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateLeadModelCopyWith<CreateLeadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateLeadModelCopyWith<$Res> {
  factory $CreateLeadModelCopyWith(
          CreateLeadModel value, $Res Function(CreateLeadModel) then) =
      _$CreateLeadModelCopyWithImpl<$Res, CreateLeadModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "lead_id") int leadId,
      @JsonKey(name: "partner_id") int partnerId,
      @JsonKey(name: "lead_name") String leadName});
}

/// @nodoc
class _$CreateLeadModelCopyWithImpl<$Res, $Val extends CreateLeadModel>
    implements $CreateLeadModelCopyWith<$Res> {
  _$CreateLeadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leadId = null,
    Object? partnerId = null,
    Object? leadName = null,
  }) {
    return _then(_value.copyWith(
      leadId: null == leadId
          ? _value.leadId
          : leadId // ignore: cast_nullable_to_non_nullable
              as int,
      partnerId: null == partnerId
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as int,
      leadName: null == leadName
          ? _value.leadName
          : leadName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateLeadModelImplCopyWith<$Res>
    implements $CreateLeadModelCopyWith<$Res> {
  factory _$$CreateLeadModelImplCopyWith(_$CreateLeadModelImpl value,
          $Res Function(_$CreateLeadModelImpl) then) =
      __$$CreateLeadModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "lead_id") int leadId,
      @JsonKey(name: "partner_id") int partnerId,
      @JsonKey(name: "lead_name") String leadName});
}

/// @nodoc
class __$$CreateLeadModelImplCopyWithImpl<$Res>
    extends _$CreateLeadModelCopyWithImpl<$Res, _$CreateLeadModelImpl>
    implements _$$CreateLeadModelImplCopyWith<$Res> {
  __$$CreateLeadModelImplCopyWithImpl(
      _$CreateLeadModelImpl _value, $Res Function(_$CreateLeadModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leadId = null,
    Object? partnerId = null,
    Object? leadName = null,
  }) {
    return _then(_$CreateLeadModelImpl(
      leadId: null == leadId
          ? _value.leadId
          : leadId // ignore: cast_nullable_to_non_nullable
              as int,
      partnerId: null == partnerId
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as int,
      leadName: null == leadName
          ? _value.leadName
          : leadName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateLeadModelImpl implements _CreateLeadModel {
  _$CreateLeadModelImpl(
      {@JsonKey(name: "lead_id") this.leadId = 0,
      @JsonKey(name: "partner_id") this.partnerId = 0,
      @JsonKey(name: "lead_name") this.leadName = ""});

  factory _$CreateLeadModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateLeadModelImplFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "lead_id")
  final int leadId;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "partner_id")
  final int partnerId;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "lead_name")
  final String leadName;

  @override
  String toString() {
    return 'CreateLeadModel(leadId: $leadId, partnerId: $partnerId, leadName: $leadName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateLeadModelImpl &&
            (identical(other.leadId, leadId) || other.leadId == leadId) &&
            (identical(other.partnerId, partnerId) ||
                other.partnerId == partnerId) &&
            (identical(other.leadName, leadName) ||
                other.leadName == leadName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, leadId, partnerId, leadName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateLeadModelImplCopyWith<_$CreateLeadModelImpl> get copyWith =>
      __$$CreateLeadModelImplCopyWithImpl<_$CreateLeadModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateLeadModelImplToJson(
      this,
    );
  }
}

abstract class _CreateLeadModel implements CreateLeadModel {
  factory _CreateLeadModel(
          {@JsonKey(name: "lead_id") final int leadId,
          @JsonKey(name: "partner_id") final int partnerId,
          @JsonKey(name: "lead_name") final String leadName}) =
      _$CreateLeadModelImpl;

  factory _CreateLeadModel.fromJson(Map<String, dynamic> json) =
      _$CreateLeadModelImpl.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: "lead_id")
  int get leadId;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "partner_id")
  int get partnerId;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "lead_name")
  String get leadName;
  @override
  @JsonKey(ignore: true)
  _$$CreateLeadModelImplCopyWith<_$CreateLeadModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
