// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthState _$AuthStateFromJson(Map<String, dynamic> json) {
  return _AuthState.fromJson(json);
}

/// @nodoc
mixin _$AuthState {
  bool get showLoding => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get verificationId => throw _privateConstructorUsedError;
  String get smsCode => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  RegisterRequestModel? get registerRequestModel =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool showLoding,
      String errorMessage,
      String phoneNumber,
      String verificationId,
      String smsCode,
      String userId,
      RegisterRequestModel? registerRequestModel});

  $RegisterRequestModelCopyWith<$Res>? get registerRequestModel;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showLoding = null,
    Object? errorMessage = null,
    Object? phoneNumber = null,
    Object? verificationId = null,
    Object? smsCode = null,
    Object? userId = null,
    Object? registerRequestModel = freezed,
  }) {
    return _then(_value.copyWith(
      showLoding: null == showLoding
          ? _value.showLoding
          : showLoding // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      smsCode: null == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      registerRequestModel: freezed == registerRequestModel
          ? _value.registerRequestModel
          : registerRequestModel // ignore: cast_nullable_to_non_nullable
              as RegisterRequestModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RegisterRequestModelCopyWith<$Res>? get registerRequestModel {
    if (_value.registerRequestModel == null) {
      return null;
    }

    return $RegisterRequestModelCopyWith<$Res>(_value.registerRequestModel!,
        (value) {
      return _then(_value.copyWith(registerRequestModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool showLoding,
      String errorMessage,
      String phoneNumber,
      String verificationId,
      String smsCode,
      String userId,
      RegisterRequestModel? registerRequestModel});

  @override
  $RegisterRequestModelCopyWith<$Res>? get registerRequestModel;
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showLoding = null,
    Object? errorMessage = null,
    Object? phoneNumber = null,
    Object? verificationId = null,
    Object? smsCode = null,
    Object? userId = null,
    Object? registerRequestModel = freezed,
  }) {
    return _then(_$_AuthState(
      showLoding: null == showLoding
          ? _value.showLoding
          : showLoding // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      smsCode: null == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      registerRequestModel: freezed == registerRequestModel
          ? _value.registerRequestModel
          : registerRequestModel // ignore: cast_nullable_to_non_nullable
              as RegisterRequestModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {required this.showLoding,
      required this.errorMessage,
      required this.phoneNumber,
      required this.verificationId,
      required this.smsCode,
      required this.userId,
      required this.registerRequestModel});

  factory _$_AuthState.fromJson(Map<String, dynamic> json) =>
      _$$_AuthStateFromJson(json);

  @override
  final bool showLoding;
  @override
  final String errorMessage;
  @override
  final String phoneNumber;
  @override
  final String verificationId;
  @override
  final String smsCode;
  @override
  final String userId;
  @override
  final RegisterRequestModel? registerRequestModel;

  @override
  String toString() {
    return 'AuthState(showLoding: $showLoding, errorMessage: $errorMessage, phoneNumber: $phoneNumber, verificationId: $verificationId, smsCode: $smsCode, userId: $userId, registerRequestModel: $registerRequestModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.showLoding, showLoding) ||
                other.showLoding == showLoding) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.smsCode, smsCode) || other.smsCode == smsCode) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.registerRequestModel, registerRequestModel) ||
                other.registerRequestModel == registerRequestModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, showLoding, errorMessage,
      phoneNumber, verificationId, smsCode, userId, registerRequestModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthStateToJson(
      this,
    );
  }
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
          {required final bool showLoding,
          required final String errorMessage,
          required final String phoneNumber,
          required final String verificationId,
          required final String smsCode,
          required final String userId,
          required final RegisterRequestModel? registerRequestModel}) =
      _$_AuthState;

  factory _AuthState.fromJson(Map<String, dynamic> json) =
      _$_AuthState.fromJson;

  @override
  bool get showLoding;
  @override
  String get errorMessage;
  @override
  String get phoneNumber;
  @override
  String get verificationId;
  @override
  String get smsCode;
  @override
  String get userId;
  @override
  RegisterRequestModel? get registerRequestModel;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
