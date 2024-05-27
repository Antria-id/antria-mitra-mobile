// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateProfileEvent {
  UpdateKaryawanRequestModel get requestUser =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpdateKaryawanRequestModel requestUser)
        onUpdateTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UpdateKaryawanRequestModel requestUser)? onUpdateTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdateKaryawanRequestModel requestUser)? onUpdateTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateProfileUserEvent value) onUpdateTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateProfileUserEvent value)? onUpdateTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProfileUserEvent value)? onUpdateTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateProfileEventCopyWith<UpdateProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileEventCopyWith<$Res> {
  factory $UpdateProfileEventCopyWith(
          UpdateProfileEvent value, $Res Function(UpdateProfileEvent) then) =
      _$UpdateProfileEventCopyWithImpl<$Res, UpdateProfileEvent>;
  @useResult
  $Res call({UpdateKaryawanRequestModel requestUser});
}

/// @nodoc
class _$UpdateProfileEventCopyWithImpl<$Res, $Val extends UpdateProfileEvent>
    implements $UpdateProfileEventCopyWith<$Res> {
  _$UpdateProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestUser = null,
  }) {
    return _then(_value.copyWith(
      requestUser: null == requestUser
          ? _value.requestUser
          : requestUser // ignore: cast_nullable_to_non_nullable
              as UpdateKaryawanRequestModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateProfileUserEventImplCopyWith<$Res>
    implements $UpdateProfileEventCopyWith<$Res> {
  factory _$$UpdateProfileUserEventImplCopyWith(
          _$UpdateProfileUserEventImpl value,
          $Res Function(_$UpdateProfileUserEventImpl) then) =
      __$$UpdateProfileUserEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UpdateKaryawanRequestModel requestUser});
}

/// @nodoc
class __$$UpdateProfileUserEventImplCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res, _$UpdateProfileUserEventImpl>
    implements _$$UpdateProfileUserEventImplCopyWith<$Res> {
  __$$UpdateProfileUserEventImplCopyWithImpl(
      _$UpdateProfileUserEventImpl _value,
      $Res Function(_$UpdateProfileUserEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestUser = null,
  }) {
    return _then(_$UpdateProfileUserEventImpl(
      requestUser: null == requestUser
          ? _value.requestUser
          : requestUser // ignore: cast_nullable_to_non_nullable
              as UpdateKaryawanRequestModel,
    ));
  }
}

/// @nodoc

class _$UpdateProfileUserEventImpl implements UpdateProfileUserEvent {
  const _$UpdateProfileUserEventImpl({required this.requestUser});

  @override
  final UpdateKaryawanRequestModel requestUser;

  @override
  String toString() {
    return 'UpdateProfileEvent.onUpdateTapped(requestUser: $requestUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileUserEventImpl &&
            (identical(other.requestUser, requestUser) ||
                other.requestUser == requestUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileUserEventImplCopyWith<_$UpdateProfileUserEventImpl>
      get copyWith => __$$UpdateProfileUserEventImplCopyWithImpl<
          _$UpdateProfileUserEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpdateKaryawanRequestModel requestUser)
        onUpdateTapped,
  }) {
    return onUpdateTapped(requestUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UpdateKaryawanRequestModel requestUser)? onUpdateTapped,
  }) {
    return onUpdateTapped?.call(requestUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdateKaryawanRequestModel requestUser)? onUpdateTapped,
    required TResult orElse(),
  }) {
    if (onUpdateTapped != null) {
      return onUpdateTapped(requestUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateProfileUserEvent value) onUpdateTapped,
  }) {
    return onUpdateTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateProfileUserEvent value)? onUpdateTapped,
  }) {
    return onUpdateTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProfileUserEvent value)? onUpdateTapped,
    required TResult orElse(),
  }) {
    if (onUpdateTapped != null) {
      return onUpdateTapped(this);
    }
    return orElse();
  }
}

abstract class UpdateProfileUserEvent implements UpdateProfileEvent {
  const factory UpdateProfileUserEvent(
          {required final UpdateKaryawanRequestModel requestUser}) =
      _$UpdateProfileUserEventImpl;

  @override
  UpdateKaryawanRequestModel get requestUser;
  @override
  @JsonKey(ignore: true)
  _$$UpdateProfileUserEventImplCopyWith<_$UpdateProfileUserEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(UpdateKaryawanRequestModel requestUser) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(UpdateKaryawanRequestModel requestUser)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(UpdateKaryawanRequestModel requestUser)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateProfileInitialState value) initial,
    required TResult Function(UpdateProfileLoadingState value) loading,
    required TResult Function(UpdateProfileErrorState value) error,
    required TResult Function(UpdateProfileLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateProfileInitialState value)? initial,
    TResult? Function(UpdateProfileLoadingState value)? loading,
    TResult? Function(UpdateProfileErrorState value)? error,
    TResult? Function(UpdateProfileLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProfileInitialState value)? initial,
    TResult Function(UpdateProfileLoadingState value)? loading,
    TResult Function(UpdateProfileErrorState value)? error,
    TResult Function(UpdateProfileLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileStateCopyWith<$Res> {
  factory $UpdateProfileStateCopyWith(
          UpdateProfileState value, $Res Function(UpdateProfileState) then) =
      _$UpdateProfileStateCopyWithImpl<$Res, UpdateProfileState>;
}

/// @nodoc
class _$UpdateProfileStateCopyWithImpl<$Res, $Val extends UpdateProfileState>
    implements $UpdateProfileStateCopyWith<$Res> {
  _$UpdateProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateProfileInitialStateImplCopyWith<$Res> {
  factory _$$UpdateProfileInitialStateImplCopyWith(
          _$UpdateProfileInitialStateImpl value,
          $Res Function(_$UpdateProfileInitialStateImpl) then) =
      __$$UpdateProfileInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateProfileInitialStateImplCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res,
        _$UpdateProfileInitialStateImpl>
    implements _$$UpdateProfileInitialStateImplCopyWith<$Res> {
  __$$UpdateProfileInitialStateImplCopyWithImpl(
      _$UpdateProfileInitialStateImpl _value,
      $Res Function(_$UpdateProfileInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateProfileInitialStateImpl implements UpdateProfileInitialState {
  const _$UpdateProfileInitialStateImpl();

  @override
  String toString() {
    return 'UpdateProfileState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(UpdateKaryawanRequestModel requestUser) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(UpdateKaryawanRequestModel requestUser)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(UpdateKaryawanRequestModel requestUser)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateProfileInitialState value) initial,
    required TResult Function(UpdateProfileLoadingState value) loading,
    required TResult Function(UpdateProfileErrorState value) error,
    required TResult Function(UpdateProfileLoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateProfileInitialState value)? initial,
    TResult? Function(UpdateProfileLoadingState value)? loading,
    TResult? Function(UpdateProfileErrorState value)? error,
    TResult? Function(UpdateProfileLoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProfileInitialState value)? initial,
    TResult Function(UpdateProfileLoadingState value)? loading,
    TResult Function(UpdateProfileErrorState value)? error,
    TResult Function(UpdateProfileLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UpdateProfileInitialState implements UpdateProfileState {
  const factory UpdateProfileInitialState() = _$UpdateProfileInitialStateImpl;
}

/// @nodoc
abstract class _$$UpdateProfileLoadingStateImplCopyWith<$Res> {
  factory _$$UpdateProfileLoadingStateImplCopyWith(
          _$UpdateProfileLoadingStateImpl value,
          $Res Function(_$UpdateProfileLoadingStateImpl) then) =
      __$$UpdateProfileLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateProfileLoadingStateImplCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res,
        _$UpdateProfileLoadingStateImpl>
    implements _$$UpdateProfileLoadingStateImplCopyWith<$Res> {
  __$$UpdateProfileLoadingStateImplCopyWithImpl(
      _$UpdateProfileLoadingStateImpl _value,
      $Res Function(_$UpdateProfileLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateProfileLoadingStateImpl implements UpdateProfileLoadingState {
  const _$UpdateProfileLoadingStateImpl();

  @override
  String toString() {
    return 'UpdateProfileState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(UpdateKaryawanRequestModel requestUser) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(UpdateKaryawanRequestModel requestUser)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(UpdateKaryawanRequestModel requestUser)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateProfileInitialState value) initial,
    required TResult Function(UpdateProfileLoadingState value) loading,
    required TResult Function(UpdateProfileErrorState value) error,
    required TResult Function(UpdateProfileLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateProfileInitialState value)? initial,
    TResult? Function(UpdateProfileLoadingState value)? loading,
    TResult? Function(UpdateProfileErrorState value)? error,
    TResult? Function(UpdateProfileLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProfileInitialState value)? initial,
    TResult Function(UpdateProfileLoadingState value)? loading,
    TResult Function(UpdateProfileErrorState value)? error,
    TResult Function(UpdateProfileLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UpdateProfileLoadingState implements UpdateProfileState {
  const factory UpdateProfileLoadingState() = _$UpdateProfileLoadingStateImpl;
}

/// @nodoc
abstract class _$$UpdateProfileErrorStateImplCopyWith<$Res> {
  factory _$$UpdateProfileErrorStateImplCopyWith(
          _$UpdateProfileErrorStateImpl value,
          $Res Function(_$UpdateProfileErrorStateImpl) then) =
      __$$UpdateProfileErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UpdateProfileErrorStateImplCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res,
        _$UpdateProfileErrorStateImpl>
    implements _$$UpdateProfileErrorStateImplCopyWith<$Res> {
  __$$UpdateProfileErrorStateImplCopyWithImpl(
      _$UpdateProfileErrorStateImpl _value,
      $Res Function(_$UpdateProfileErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UpdateProfileErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateProfileErrorStateImpl implements UpdateProfileErrorState {
  const _$UpdateProfileErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'UpdateProfileState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileErrorStateImplCopyWith<_$UpdateProfileErrorStateImpl>
      get copyWith => __$$UpdateProfileErrorStateImplCopyWithImpl<
          _$UpdateProfileErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(UpdateKaryawanRequestModel requestUser) loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(UpdateKaryawanRequestModel requestUser)? loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(UpdateKaryawanRequestModel requestUser)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateProfileInitialState value) initial,
    required TResult Function(UpdateProfileLoadingState value) loading,
    required TResult Function(UpdateProfileErrorState value) error,
    required TResult Function(UpdateProfileLoadedState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateProfileInitialState value)? initial,
    TResult? Function(UpdateProfileLoadingState value)? loading,
    TResult? Function(UpdateProfileErrorState value)? error,
    TResult? Function(UpdateProfileLoadedState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProfileInitialState value)? initial,
    TResult Function(UpdateProfileLoadingState value)? loading,
    TResult Function(UpdateProfileErrorState value)? error,
    TResult Function(UpdateProfileLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateProfileErrorState implements UpdateProfileState {
  const factory UpdateProfileErrorState(final String message) =
      _$UpdateProfileErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$UpdateProfileErrorStateImplCopyWith<_$UpdateProfileErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProfileLoadedStateImplCopyWith<$Res> {
  factory _$$UpdateProfileLoadedStateImplCopyWith(
          _$UpdateProfileLoadedStateImpl value,
          $Res Function(_$UpdateProfileLoadedStateImpl) then) =
      __$$UpdateProfileLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateKaryawanRequestModel requestUser});
}

/// @nodoc
class __$$UpdateProfileLoadedStateImplCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res,
        _$UpdateProfileLoadedStateImpl>
    implements _$$UpdateProfileLoadedStateImplCopyWith<$Res> {
  __$$UpdateProfileLoadedStateImplCopyWithImpl(
      _$UpdateProfileLoadedStateImpl _value,
      $Res Function(_$UpdateProfileLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestUser = null,
  }) {
    return _then(_$UpdateProfileLoadedStateImpl(
      requestUser: null == requestUser
          ? _value.requestUser
          : requestUser // ignore: cast_nullable_to_non_nullable
              as UpdateKaryawanRequestModel,
    ));
  }
}

/// @nodoc

class _$UpdateProfileLoadedStateImpl implements UpdateProfileLoadedState {
  const _$UpdateProfileLoadedStateImpl({required this.requestUser});

  @override
  final UpdateKaryawanRequestModel requestUser;

  @override
  String toString() {
    return 'UpdateProfileState.loaded(requestUser: $requestUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileLoadedStateImpl &&
            (identical(other.requestUser, requestUser) ||
                other.requestUser == requestUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileLoadedStateImplCopyWith<_$UpdateProfileLoadedStateImpl>
      get copyWith => __$$UpdateProfileLoadedStateImplCopyWithImpl<
          _$UpdateProfileLoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(UpdateKaryawanRequestModel requestUser) loaded,
  }) {
    return loaded(requestUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(UpdateKaryawanRequestModel requestUser)? loaded,
  }) {
    return loaded?.call(requestUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(UpdateKaryawanRequestModel requestUser)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(requestUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateProfileInitialState value) initial,
    required TResult Function(UpdateProfileLoadingState value) loading,
    required TResult Function(UpdateProfileErrorState value) error,
    required TResult Function(UpdateProfileLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateProfileInitialState value)? initial,
    TResult? Function(UpdateProfileLoadingState value)? loading,
    TResult? Function(UpdateProfileErrorState value)? error,
    TResult? Function(UpdateProfileLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProfileInitialState value)? initial,
    TResult Function(UpdateProfileLoadingState value)? loading,
    TResult Function(UpdateProfileErrorState value)? error,
    TResult Function(UpdateProfileLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class UpdateProfileLoadedState implements UpdateProfileState {
  const factory UpdateProfileLoadedState(
          {required final UpdateKaryawanRequestModel requestUser}) =
      _$UpdateProfileLoadedStateImpl;

  UpdateKaryawanRequestModel get requestUser;
  @JsonKey(ignore: true)
  _$$UpdateProfileLoadedStateImplCopyWith<_$UpdateProfileLoadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
