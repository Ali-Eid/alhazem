// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateOrderModel _$CreateOrderModelFromJson(Map<String, dynamic> json) {
  return _CreateOrderModel.fromJson(json);
}

/// @nodoc
mixin _$CreateOrderModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  List<AttachmentsMissedModel> get attachments =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateOrderModelCopyWith<CreateOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrderModelCopyWith<$Res> {
  factory $CreateOrderModelCopyWith(
          CreateOrderModel value, $Res Function(CreateOrderModel) then) =
      _$CreateOrderModelCopyWithImpl<$Res, CreateOrderModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String state,
      List<AttachmentsMissedModel> attachments});
}

/// @nodoc
class _$CreateOrderModelCopyWithImpl<$Res, $Val extends CreateOrderModel>
    implements $CreateOrderModelCopyWith<$Res> {
  _$CreateOrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? state = null,
    Object? attachments = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentsMissedModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateOrderModelImplCopyWith<$Res>
    implements $CreateOrderModelCopyWith<$Res> {
  factory _$$CreateOrderModelImplCopyWith(_$CreateOrderModelImpl value,
          $Res Function(_$CreateOrderModelImpl) then) =
      __$$CreateOrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String state,
      List<AttachmentsMissedModel> attachments});
}

/// @nodoc
class __$$CreateOrderModelImplCopyWithImpl<$Res>
    extends _$CreateOrderModelCopyWithImpl<$Res, _$CreateOrderModelImpl>
    implements _$$CreateOrderModelImplCopyWith<$Res> {
  __$$CreateOrderModelImplCopyWithImpl(_$CreateOrderModelImpl _value,
      $Res Function(_$CreateOrderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? state = null,
    Object? attachments = null,
  }) {
    return _then(_$CreateOrderModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentsMissedModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateOrderModelImpl implements _CreateOrderModel {
  _$CreateOrderModelImpl(
      {this.id = 0,
      this.name = "",
      this.state = "",
      final List<AttachmentsMissedModel> attachments = const []})
      : _attachments = attachments;

  factory _$CreateOrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateOrderModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String state;
  final List<AttachmentsMissedModel> _attachments;
  @override
  @JsonKey()
  List<AttachmentsMissedModel> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  String toString() {
    return 'CreateOrderModel(id: $id, name: $name, state: $state, attachments: $attachments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateOrderModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.state, state) || other.state == state) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, state,
      const DeepCollectionEquality().hash(_attachments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateOrderModelImplCopyWith<_$CreateOrderModelImpl> get copyWith =>
      __$$CreateOrderModelImplCopyWithImpl<_$CreateOrderModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateOrderModelImplToJson(
      this,
    );
  }
}

abstract class _CreateOrderModel implements CreateOrderModel {
  factory _CreateOrderModel(
      {final int id,
      final String name,
      final String state,
      final List<AttachmentsMissedModel> attachments}) = _$CreateOrderModelImpl;

  factory _CreateOrderModel.fromJson(Map<String, dynamic> json) =
      _$CreateOrderModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get state;
  @override
  List<AttachmentsMissedModel> get attachments;
  @override
  @JsonKey(ignore: true)
  _$$CreateOrderModelImplCopyWith<_$CreateOrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AttachmentsMissedModel _$AttachmentsMissedModelFromJson(
    Map<String, dynamic> json) {
  return _AttachmentsMissedModel.fromJson(json);
}

/// @nodoc
mixin _$AttachmentsMissedModel {
  @JsonKey(name: "traveler_id")
  int get travelerId => throw _privateConstructorUsedError;
  @JsonKey(name: "traveler_name")
  String get travelerName => throw _privateConstructorUsedError;
  @JsonKey(name: "attachments")
  List<AttachmentsModel> get attachment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttachmentsMissedModelCopyWith<AttachmentsMissedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentsMissedModelCopyWith<$Res> {
  factory $AttachmentsMissedModelCopyWith(AttachmentsMissedModel value,
          $Res Function(AttachmentsMissedModel) then) =
      _$AttachmentsMissedModelCopyWithImpl<$Res, AttachmentsMissedModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "traveler_id") int travelerId,
      @JsonKey(name: "traveler_name") String travelerName,
      @JsonKey(name: "attachments") List<AttachmentsModel> attachment});
}

/// @nodoc
class _$AttachmentsMissedModelCopyWithImpl<$Res,
        $Val extends AttachmentsMissedModel>
    implements $AttachmentsMissedModelCopyWith<$Res> {
  _$AttachmentsMissedModelCopyWithImpl(this._value, this._then);

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
              as List<AttachmentsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttachmentsMissedModelImplCopyWith<$Res>
    implements $AttachmentsMissedModelCopyWith<$Res> {
  factory _$$AttachmentsMissedModelImplCopyWith(
          _$AttachmentsMissedModelImpl value,
          $Res Function(_$AttachmentsMissedModelImpl) then) =
      __$$AttachmentsMissedModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "traveler_id") int travelerId,
      @JsonKey(name: "traveler_name") String travelerName,
      @JsonKey(name: "attachments") List<AttachmentsModel> attachment});
}

/// @nodoc
class __$$AttachmentsMissedModelImplCopyWithImpl<$Res>
    extends _$AttachmentsMissedModelCopyWithImpl<$Res,
        _$AttachmentsMissedModelImpl>
    implements _$$AttachmentsMissedModelImplCopyWith<$Res> {
  __$$AttachmentsMissedModelImplCopyWithImpl(
      _$AttachmentsMissedModelImpl _value,
      $Res Function(_$AttachmentsMissedModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? travelerId = null,
    Object? travelerName = null,
    Object? attachment = null,
  }) {
    return _then(_$AttachmentsMissedModelImpl(
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
              as List<AttachmentsModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttachmentsMissedModelImpl implements _AttachmentsMissedModel {
  _$AttachmentsMissedModelImpl(
      {@JsonKey(name: "traveler_id") this.travelerId = 0,
      @JsonKey(name: "traveler_name") this.travelerName = "",
      @JsonKey(name: "attachments")
      final List<AttachmentsModel> attachment = const []})
      : _attachment = attachment;

  factory _$AttachmentsMissedModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttachmentsMissedModelImplFromJson(json);

  @override
  @JsonKey(name: "traveler_id")
  final int travelerId;
  @override
  @JsonKey(name: "traveler_name")
  final String travelerName;
  final List<AttachmentsModel> _attachment;
  @override
  @JsonKey(name: "attachments")
  List<AttachmentsModel> get attachment {
    if (_attachment is EqualUnmodifiableListView) return _attachment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachment);
  }

  @override
  String toString() {
    return 'AttachmentsMissedModel(travelerId: $travelerId, travelerName: $travelerName, attachment: $attachment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachmentsMissedModelImpl &&
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
  _$$AttachmentsMissedModelImplCopyWith<_$AttachmentsMissedModelImpl>
      get copyWith => __$$AttachmentsMissedModelImplCopyWithImpl<
          _$AttachmentsMissedModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttachmentsMissedModelImplToJson(
      this,
    );
  }
}

abstract class _AttachmentsMissedModel implements AttachmentsMissedModel {
  factory _AttachmentsMissedModel(
      {@JsonKey(name: "traveler_id") final int travelerId,
      @JsonKey(name: "traveler_name") final String travelerName,
      @JsonKey(name: "attachments")
      final List<AttachmentsModel> attachment}) = _$AttachmentsMissedModelImpl;

  factory _AttachmentsMissedModel.fromJson(Map<String, dynamic> json) =
      _$AttachmentsMissedModelImpl.fromJson;

  @override
  @JsonKey(name: "traveler_id")
  int get travelerId;
  @override
  @JsonKey(name: "traveler_name")
  String get travelerName;
  @override
  @JsonKey(name: "attachments")
  List<AttachmentsModel> get attachment;
  @override
  @JsonKey(ignore: true)
  _$$AttachmentsMissedModelImplCopyWith<_$AttachmentsMissedModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AttachmentsModel _$AttachmentsModelFromJson(Map<String, dynamic> json) {
  return _AttachmentsModel.fromJson(json);
}

/// @nodoc
mixin _$AttachmentsModel {
  @JsonKey(name: "att_id")
  int get attachmentId => throw _privateConstructorUsedError;
  @JsonKey(name: "att_name")
  String get attachmentName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttachmentsModelCopyWith<AttachmentsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentsModelCopyWith<$Res> {
  factory $AttachmentsModelCopyWith(
          AttachmentsModel value, $Res Function(AttachmentsModel) then) =
      _$AttachmentsModelCopyWithImpl<$Res, AttachmentsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "att_id") int attachmentId,
      @JsonKey(name: "att_name") String attachmentName});
}

/// @nodoc
class _$AttachmentsModelCopyWithImpl<$Res, $Val extends AttachmentsModel>
    implements $AttachmentsModelCopyWith<$Res> {
  _$AttachmentsModelCopyWithImpl(this._value, this._then);

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
abstract class _$$AttachmentsModelImplCopyWith<$Res>
    implements $AttachmentsModelCopyWith<$Res> {
  factory _$$AttachmentsModelImplCopyWith(_$AttachmentsModelImpl value,
          $Res Function(_$AttachmentsModelImpl) then) =
      __$$AttachmentsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "att_id") int attachmentId,
      @JsonKey(name: "att_name") String attachmentName});
}

/// @nodoc
class __$$AttachmentsModelImplCopyWithImpl<$Res>
    extends _$AttachmentsModelCopyWithImpl<$Res, _$AttachmentsModelImpl>
    implements _$$AttachmentsModelImplCopyWith<$Res> {
  __$$AttachmentsModelImplCopyWithImpl(_$AttachmentsModelImpl _value,
      $Res Function(_$AttachmentsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attachmentId = null,
    Object? attachmentName = null,
  }) {
    return _then(_$AttachmentsModelImpl(
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
class _$AttachmentsModelImpl implements _AttachmentsModel {
  const _$AttachmentsModelImpl(
      {@JsonKey(name: "att_id") this.attachmentId = 0,
      @JsonKey(name: "att_name") this.attachmentName = ""});

  factory _$AttachmentsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttachmentsModelImplFromJson(json);

  @override
  @JsonKey(name: "att_id")
  final int attachmentId;
  @override
  @JsonKey(name: "att_name")
  final String attachmentName;

  @override
  String toString() {
    return 'AttachmentsModel(attachmentId: $attachmentId, attachmentName: $attachmentName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachmentsModelImpl &&
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
  _$$AttachmentsModelImplCopyWith<_$AttachmentsModelImpl> get copyWith =>
      __$$AttachmentsModelImplCopyWithImpl<_$AttachmentsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttachmentsModelImplToJson(
      this,
    );
  }
}

abstract class _AttachmentsModel implements AttachmentsModel {
  const factory _AttachmentsModel(
          {@JsonKey(name: "att_id") final int attachmentId,
          @JsonKey(name: "att_name") final String attachmentName}) =
      _$AttachmentsModelImpl;

  factory _AttachmentsModel.fromJson(Map<String, dynamic> json) =
      _$AttachmentsModelImpl.fromJson;

  @override
  @JsonKey(name: "att_id")
  int get attachmentId;
  @override
  @JsonKey(name: "att_name")
  String get attachmentName;
  @override
  @JsonKey(ignore: true)
  _$$AttachmentsModelImplCopyWith<_$AttachmentsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
