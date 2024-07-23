// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attachments_required_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttachmentsRequiredModel _$AttachmentsRequiredModelFromJson(
    Map<String, dynamic> json) {
  return _AttachmetnsRequiredModel.fromJson(json);
}

/// @nodoc
mixin _$AttachmentsRequiredModel {
  @JsonKey(name: "traveler_id")
  int get travelerId => throw _privateConstructorUsedError;
  @JsonKey(name: "traveler_name")
  String get travelerName => throw _privateConstructorUsedError;
  @JsonKey(name: "attachments")
  List<AttachmentsDataModel> get attachment =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttachmentsRequiredModelCopyWith<AttachmentsRequiredModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentsRequiredModelCopyWith<$Res> {
  factory $AttachmentsRequiredModelCopyWith(AttachmentsRequiredModel value,
          $Res Function(AttachmentsRequiredModel) then) =
      _$AttachmentsRequiredModelCopyWithImpl<$Res, AttachmentsRequiredModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "traveler_id") int travelerId,
      @JsonKey(name: "traveler_name") String travelerName,
      @JsonKey(name: "attachments") List<AttachmentsDataModel> attachment});
}

/// @nodoc
class _$AttachmentsRequiredModelCopyWithImpl<$Res,
        $Val extends AttachmentsRequiredModel>
    implements $AttachmentsRequiredModelCopyWith<$Res> {
  _$AttachmentsRequiredModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? travelerId = null,
    Object? travelerName = null,
    Object? attachment = null,
  }) {
    return _then(_value.copyWith(
      travelerId: null == travelerId
          ? _value.travelerId
          : travelerId // ignore: cast_nullable_to_non_nullable
              as int,
      travelerName: null == travelerName
          ? _value.travelerName
          : travelerName // ignore: cast_nullable_to_non_nullable
              as String,
      attachment: null == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as List<AttachmentsDataModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttachmetnsRequiredModelImplCopyWith<$Res>
    implements $AttachmentsRequiredModelCopyWith<$Res> {
  factory _$$AttachmetnsRequiredModelImplCopyWith(
          _$AttachmetnsRequiredModelImpl value,
          $Res Function(_$AttachmetnsRequiredModelImpl) then) =
      __$$AttachmetnsRequiredModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "traveler_id") int travelerId,
      @JsonKey(name: "traveler_name") String travelerName,
      @JsonKey(name: "attachments") List<AttachmentsDataModel> attachment});
}

/// @nodoc
class __$$AttachmetnsRequiredModelImplCopyWithImpl<$Res>
    extends _$AttachmentsRequiredModelCopyWithImpl<$Res,
        _$AttachmetnsRequiredModelImpl>
    implements _$$AttachmetnsRequiredModelImplCopyWith<$Res> {
  __$$AttachmetnsRequiredModelImplCopyWithImpl(
      _$AttachmetnsRequiredModelImpl _value,
      $Res Function(_$AttachmetnsRequiredModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? travelerId = null,
    Object? travelerName = null,
    Object? attachment = null,
  }) {
    return _then(_$AttachmetnsRequiredModelImpl(
      travelerId: null == travelerId
          ? _value.travelerId
          : travelerId // ignore: cast_nullable_to_non_nullable
              as int,
      travelerName: null == travelerName
          ? _value.travelerName
          : travelerName // ignore: cast_nullable_to_non_nullable
              as String,
      attachment: null == attachment
          ? _value._attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as List<AttachmentsDataModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttachmetnsRequiredModelImpl implements _AttachmetnsRequiredModel {
  _$AttachmetnsRequiredModelImpl(
      {@JsonKey(name: "traveler_id") this.travelerId = 0,
      @JsonKey(name: "traveler_name") this.travelerName = "",
      @JsonKey(name: "attachments")
      final List<AttachmentsDataModel> attachment = const []})
      : _attachment = attachment;

  factory _$AttachmetnsRequiredModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttachmetnsRequiredModelImplFromJson(json);

  @override
  @JsonKey(name: "traveler_id")
  final int travelerId;
  @override
  @JsonKey(name: "traveler_name")
  final String travelerName;
  final List<AttachmentsDataModel> _attachment;
  @override
  @JsonKey(name: "attachments")
  List<AttachmentsDataModel> get attachment {
    if (_attachment is EqualUnmodifiableListView) return _attachment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachment);
  }

  @override
  String toString() {
    return 'AttachmentsRequiredModel(travelerId: $travelerId, travelerName: $travelerName, attachment: $attachment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachmetnsRequiredModelImpl &&
            (identical(other.travelerId, travelerId) ||
                other.travelerId == travelerId) &&
            (identical(other.travelerName, travelerName) ||
                other.travelerName == travelerName) &&
            const DeepCollectionEquality()
                .equals(other._attachment, _attachment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, travelerId, travelerName,
      const DeepCollectionEquality().hash(_attachment));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttachmetnsRequiredModelImplCopyWith<_$AttachmetnsRequiredModelImpl>
      get copyWith => __$$AttachmetnsRequiredModelImplCopyWithImpl<
          _$AttachmetnsRequiredModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttachmetnsRequiredModelImplToJson(
      this,
    );
  }
}

abstract class _AttachmetnsRequiredModel implements AttachmentsRequiredModel {
  factory _AttachmetnsRequiredModel(
          {@JsonKey(name: "traveler_id") final int travelerId,
          @JsonKey(name: "traveler_name") final String travelerName,
          @JsonKey(name: "attachments")
          final List<AttachmentsDataModel> attachment}) =
      _$AttachmetnsRequiredModelImpl;

  factory _AttachmetnsRequiredModel.fromJson(Map<String, dynamic> json) =
      _$AttachmetnsRequiredModelImpl.fromJson;

  @override
  @JsonKey(name: "traveler_id")
  int get travelerId;
  @override
  @JsonKey(name: "traveler_name")
  String get travelerName;
  @override
  @JsonKey(name: "attachments")
  List<AttachmentsDataModel> get attachment;
  @override
  @JsonKey(ignore: true)
  _$$AttachmetnsRequiredModelImplCopyWith<_$AttachmetnsRequiredModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AttachmentsDataModel _$AttachmentsDataModelFromJson(Map<String, dynamic> json) {
  return _AttachmentsDataModel.fromJson(json);
}

/// @nodoc
mixin _$AttachmentsDataModel {
  @JsonKey(name: "att_id")
  int get attachmentId => throw _privateConstructorUsedError;
  @JsonKey(name: "att_name")
  String get attachmentName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttachmentsDataModelCopyWith<AttachmentsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentsDataModelCopyWith<$Res> {
  factory $AttachmentsDataModelCopyWith(AttachmentsDataModel value,
          $Res Function(AttachmentsDataModel) then) =
      _$AttachmentsDataModelCopyWithImpl<$Res, AttachmentsDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "att_id") int attachmentId,
      @JsonKey(name: "att_name") String attachmentName});
}

/// @nodoc
class _$AttachmentsDataModelCopyWithImpl<$Res,
        $Val extends AttachmentsDataModel>
    implements $AttachmentsDataModelCopyWith<$Res> {
  _$AttachmentsDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attachmentId = null,
    Object? attachmentName = null,
  }) {
    return _then(_value.copyWith(
      attachmentId: null == attachmentId
          ? _value.attachmentId
          : attachmentId // ignore: cast_nullable_to_non_nullable
              as int,
      attachmentName: null == attachmentName
          ? _value.attachmentName
          : attachmentName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttachmentsDataModelImplCopyWith<$Res>
    implements $AttachmentsDataModelCopyWith<$Res> {
  factory _$$AttachmentsDataModelImplCopyWith(_$AttachmentsDataModelImpl value,
          $Res Function(_$AttachmentsDataModelImpl) then) =
      __$$AttachmentsDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "att_id") int attachmentId,
      @JsonKey(name: "att_name") String attachmentName});
}

/// @nodoc
class __$$AttachmentsDataModelImplCopyWithImpl<$Res>
    extends _$AttachmentsDataModelCopyWithImpl<$Res, _$AttachmentsDataModelImpl>
    implements _$$AttachmentsDataModelImplCopyWith<$Res> {
  __$$AttachmentsDataModelImplCopyWithImpl(_$AttachmentsDataModelImpl _value,
      $Res Function(_$AttachmentsDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attachmentId = null,
    Object? attachmentName = null,
  }) {
    return _then(_$AttachmentsDataModelImpl(
      attachmentId: null == attachmentId
          ? _value.attachmentId
          : attachmentId // ignore: cast_nullable_to_non_nullable
              as int,
      attachmentName: null == attachmentName
          ? _value.attachmentName
          : attachmentName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttachmentsDataModelImpl implements _AttachmentsDataModel {
  const _$AttachmentsDataModelImpl(
      {@JsonKey(name: "att_id") this.attachmentId = 0,
      @JsonKey(name: "att_name") this.attachmentName = ""});

  factory _$AttachmentsDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttachmentsDataModelImplFromJson(json);

  @override
  @JsonKey(name: "att_id")
  final int attachmentId;
  @override
  @JsonKey(name: "att_name")
  final String attachmentName;

  @override
  String toString() {
    return 'AttachmentsDataModel(attachmentId: $attachmentId, attachmentName: $attachmentName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachmentsDataModelImpl &&
            (identical(other.attachmentId, attachmentId) ||
                other.attachmentId == attachmentId) &&
            (identical(other.attachmentName, attachmentName) ||
                other.attachmentName == attachmentName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, attachmentId, attachmentName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttachmentsDataModelImplCopyWith<_$AttachmentsDataModelImpl>
      get copyWith =>
          __$$AttachmentsDataModelImplCopyWithImpl<_$AttachmentsDataModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttachmentsDataModelImplToJson(
      this,
    );
  }
}

abstract class _AttachmentsDataModel implements AttachmentsDataModel {
  const factory _AttachmentsDataModel(
          {@JsonKey(name: "att_id") final int attachmentId,
          @JsonKey(name: "att_name") final String attachmentName}) =
      _$AttachmentsDataModelImpl;

  factory _AttachmentsDataModel.fromJson(Map<String, dynamic> json) =
      _$AttachmentsDataModelImpl.fromJson;

  @override
  @JsonKey(name: "att_id")
  int get attachmentId;
  @override
  @JsonKey(name: "att_name")
  String get attachmentName;
  @override
  @JsonKey(ignore: true)
  _$$AttachmentsDataModelImplCopyWith<_$AttachmentsDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
