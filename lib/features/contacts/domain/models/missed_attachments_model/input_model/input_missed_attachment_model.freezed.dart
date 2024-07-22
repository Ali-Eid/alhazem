// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_missed_attachment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InputUpdateAttachmentsModel _$InputUpdateAttachmentsModelFromJson(
    Map<String, dynamic> json) {
  return _InputUpdateAttachmentsModel.fromJson(json);
}

/// @nodoc
mixin _$InputUpdateAttachmentsModel {
  @JsonKey(name: "input")
  List<InputMissedAttachmentModel> get input =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InputUpdateAttachmentsModelCopyWith<InputUpdateAttachmentsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputUpdateAttachmentsModelCopyWith<$Res> {
  factory $InputUpdateAttachmentsModelCopyWith(
          InputUpdateAttachmentsModel value,
          $Res Function(InputUpdateAttachmentsModel) then) =
      _$InputUpdateAttachmentsModelCopyWithImpl<$Res,
          InputUpdateAttachmentsModel>;
  @useResult
  $Res call({@JsonKey(name: "input") List<InputMissedAttachmentModel> input});
}

/// @nodoc
class _$InputUpdateAttachmentsModelCopyWithImpl<$Res,
        $Val extends InputUpdateAttachmentsModel>
    implements $InputUpdateAttachmentsModelCopyWith<$Res> {
  _$InputUpdateAttachmentsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_value.copyWith(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as List<InputMissedAttachmentModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputUpdateAttachmentsModelImplCopyWith<$Res>
    implements $InputUpdateAttachmentsModelCopyWith<$Res> {
  factory _$$InputUpdateAttachmentsModelImplCopyWith(
          _$InputUpdateAttachmentsModelImpl value,
          $Res Function(_$InputUpdateAttachmentsModelImpl) then) =
      __$$InputUpdateAttachmentsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "input") List<InputMissedAttachmentModel> input});
}

/// @nodoc
class __$$InputUpdateAttachmentsModelImplCopyWithImpl<$Res>
    extends _$InputUpdateAttachmentsModelCopyWithImpl<$Res,
        _$InputUpdateAttachmentsModelImpl>
    implements _$$InputUpdateAttachmentsModelImplCopyWith<$Res> {
  __$$InputUpdateAttachmentsModelImplCopyWithImpl(
      _$InputUpdateAttachmentsModelImpl _value,
      $Res Function(_$InputUpdateAttachmentsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_$InputUpdateAttachmentsModelImpl(
      input: null == input
          ? _value._input
          : input // ignore: cast_nullable_to_non_nullable
              as List<InputMissedAttachmentModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputUpdateAttachmentsModelImpl
    implements _InputUpdateAttachmentsModel {
  _$InputUpdateAttachmentsModelImpl(
      {@JsonKey(name: "input")
      final List<InputMissedAttachmentModel> input = const []})
      : _input = input;

  factory _$InputUpdateAttachmentsModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InputUpdateAttachmentsModelImplFromJson(json);

  final List<InputMissedAttachmentModel> _input;
  @override
  @JsonKey(name: "input")
  List<InputMissedAttachmentModel> get input {
    if (_input is EqualUnmodifiableListView) return _input;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_input);
  }

  @override
  String toString() {
    return 'InputUpdateAttachmentsModel(input: $input)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputUpdateAttachmentsModelImpl &&
            const DeepCollectionEquality().equals(other._input, _input));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_input));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputUpdateAttachmentsModelImplCopyWith<_$InputUpdateAttachmentsModelImpl>
      get copyWith => __$$InputUpdateAttachmentsModelImplCopyWithImpl<
          _$InputUpdateAttachmentsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InputUpdateAttachmentsModelImplToJson(
      this,
    );
  }
}

abstract class _InputUpdateAttachmentsModel
    implements InputUpdateAttachmentsModel {
  factory _InputUpdateAttachmentsModel(
          {@JsonKey(name: "input")
          final List<InputMissedAttachmentModel> input}) =
      _$InputUpdateAttachmentsModelImpl;

  factory _InputUpdateAttachmentsModel.fromJson(Map<String, dynamic> json) =
      _$InputUpdateAttachmentsModelImpl.fromJson;

  @override
  @JsonKey(name: "input")
  List<InputMissedAttachmentModel> get input;
  @override
  @JsonKey(ignore: true)
  _$$InputUpdateAttachmentsModelImplCopyWith<_$InputUpdateAttachmentsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InputMissedAttachmentModel _$InputMissedAttachmentModelFromJson(
    Map<String, dynamic> json) {
  return _InputMissedAttachmentModel.fromJson(json);
}

/// @nodoc
mixin _$InputMissedAttachmentModel {
  @JsonKey(name: "traveler_id")
  int get travelerId => throw _privateConstructorUsedError;
  List<AttachmentsCreateTravelerModel> get attachments =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InputMissedAttachmentModelCopyWith<InputMissedAttachmentModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputMissedAttachmentModelCopyWith<$Res> {
  factory $InputMissedAttachmentModelCopyWith(InputMissedAttachmentModel value,
          $Res Function(InputMissedAttachmentModel) then) =
      _$InputMissedAttachmentModelCopyWithImpl<$Res,
          InputMissedAttachmentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "traveler_id") int travelerId,
      List<AttachmentsCreateTravelerModel> attachments});
}

/// @nodoc
class _$InputMissedAttachmentModelCopyWithImpl<$Res,
        $Val extends InputMissedAttachmentModel>
    implements $InputMissedAttachmentModelCopyWith<$Res> {
  _$InputMissedAttachmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? travelerId = null,
    Object? attachments = null,
  }) {
    return _then(_value.copyWith(
      travelerId: null == travelerId
          ? _value.travelerId
          : travelerId // ignore: cast_nullable_to_non_nullable
              as int,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentsCreateTravelerModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputMissedAttachmentModelImplCopyWith<$Res>
    implements $InputMissedAttachmentModelCopyWith<$Res> {
  factory _$$InputMissedAttachmentModelImplCopyWith(
          _$InputMissedAttachmentModelImpl value,
          $Res Function(_$InputMissedAttachmentModelImpl) then) =
      __$$InputMissedAttachmentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "traveler_id") int travelerId,
      List<AttachmentsCreateTravelerModel> attachments});
}

/// @nodoc
class __$$InputMissedAttachmentModelImplCopyWithImpl<$Res>
    extends _$InputMissedAttachmentModelCopyWithImpl<$Res,
        _$InputMissedAttachmentModelImpl>
    implements _$$InputMissedAttachmentModelImplCopyWith<$Res> {
  __$$InputMissedAttachmentModelImplCopyWithImpl(
      _$InputMissedAttachmentModelImpl _value,
      $Res Function(_$InputMissedAttachmentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? travelerId = null,
    Object? attachments = null,
  }) {
    return _then(_$InputMissedAttachmentModelImpl(
      travelerId: null == travelerId
          ? _value.travelerId
          : travelerId // ignore: cast_nullable_to_non_nullable
              as int,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentsCreateTravelerModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputMissedAttachmentModelImpl implements _InputMissedAttachmentModel {
  _$InputMissedAttachmentModelImpl(
      {@JsonKey(name: "traveler_id") this.travelerId = 0,
      final List<AttachmentsCreateTravelerModel> attachments = const []})
      : _attachments = attachments;

  factory _$InputMissedAttachmentModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InputMissedAttachmentModelImplFromJson(json);

  @override
  @JsonKey(name: "traveler_id")
  final int travelerId;
  final List<AttachmentsCreateTravelerModel> _attachments;
  @override
  @JsonKey()
  List<AttachmentsCreateTravelerModel> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  String toString() {
    return 'InputMissedAttachmentModel(travelerId: $travelerId, attachments: $attachments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputMissedAttachmentModelImpl &&
            (identical(other.travelerId, travelerId) ||
                other.travelerId == travelerId) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, travelerId,
      const DeepCollectionEquality().hash(_attachments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputMissedAttachmentModelImplCopyWith<_$InputMissedAttachmentModelImpl>
      get copyWith => __$$InputMissedAttachmentModelImplCopyWithImpl<
          _$InputMissedAttachmentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InputMissedAttachmentModelImplToJson(
      this,
    );
  }
}

abstract class _InputMissedAttachmentModel
    implements InputMissedAttachmentModel {
  factory _InputMissedAttachmentModel(
          {@JsonKey(name: "traveler_id") final int travelerId,
          final List<AttachmentsCreateTravelerModel> attachments}) =
      _$InputMissedAttachmentModelImpl;

  factory _InputMissedAttachmentModel.fromJson(Map<String, dynamic> json) =
      _$InputMissedAttachmentModelImpl.fromJson;

  @override
  @JsonKey(name: "traveler_id")
  int get travelerId;
  @override
  List<AttachmentsCreateTravelerModel> get attachments;
  @override
  @JsonKey(ignore: true)
  _$$InputMissedAttachmentModelImplCopyWith<_$InputMissedAttachmentModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
