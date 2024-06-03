// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_usaha_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateUsahaEvent {
  UpdateUsahaRequestModel get requestUser => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpdateUsahaRequestModel requestUser)
        onUpdateTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UpdateUsahaRequestModel requestUser)? onUpdateTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdateUsahaRequestModel requestUser)? onUpdateTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateUsahaUserEvent value) onUpdateTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateUsahaUserEvent value)? onUpdateTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateUsahaUserEvent value)? onUpdateTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateUsahaEventCopyWith<UpdateUsahaEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUsahaEventCopyWith<$Res> {
  factory $UpdateUsahaEventCopyWith(
          UpdateUsahaEvent value, $Res Function(UpdateUsahaEvent) then) =
      _$UpdateUsahaEventCopyWithImpl<$Res, UpdateUsahaEvent>;
  @useResult
  $Res call({UpdateUsahaRequestModel requestUser});
}

/// @nodoc
class _$UpdateUsahaEventCopyWithImpl<$Res, $Val extends UpdateUsahaEvent>
    implements $UpdateUsahaEventCopyWith<$Res> {
  _$UpdateUsahaEventCopyWithImpl(this._value, this._then);

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
              as UpdateUsahaRequestModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateUsahaUserEventImplCopyWith<$Res>
    implements $UpdateUsahaEventCopyWith<$Res> {
  factory _$$UpdateUsahaUserEventImplCopyWith(_$UpdateUsahaUserEventImpl value,
          $Res Function(_$UpdateUsahaUserEventImpl) then) =
      __$$UpdateUsahaUserEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UpdateUsahaRequestModel requestUser});
}

/// @nodoc
class __$$UpdateUsahaUserEventImplCopyWithImpl<$Res>
    extends _$UpdateUsahaEventCopyWithImpl<$Res, _$UpdateUsahaUserEventImpl>
    implements _$$UpdateUsahaUserEventImplCopyWith<$Res> {
  __$$UpdateUsahaUserEventImplCopyWithImpl(_$UpdateUsahaUserEventImpl _value,
      $Res Function(_$UpdateUsahaUserEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestUser = null,
  }) {
    return _then(_$UpdateUsahaUserEventImpl(
      requestUser: null == requestUser
          ? _value.requestUser
          : requestUser // ignore: cast_nullable_to_non_nullable
              as UpdateUsahaRequestModel,
    ));
  }
}

/// @nodoc

class _$UpdateUsahaUserEventImpl implements UpdateUsahaUserEvent {
  const _$UpdateUsahaUserEventImpl({required this.requestUser});

  @override
  final UpdateUsahaRequestModel requestUser;

  @override
  String toString() {
    return 'UpdateUsahaEvent.onUpdateTapped(requestUser: $requestUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUsahaUserEventImpl &&
            (identical(other.requestUser, requestUser) ||
                other.requestUser == requestUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUsahaUserEventImplCopyWith<_$UpdateUsahaUserEventImpl>
      get copyWith =>
          __$$UpdateUsahaUserEventImplCopyWithImpl<_$UpdateUsahaUserEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpdateUsahaRequestModel requestUser)
        onUpdateTapped,
  }) {
    return onUpdateTapped(requestUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UpdateUsahaRequestModel requestUser)? onUpdateTapped,
  }) {
    return onUpdateTapped?.call(requestUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdateUsahaRequestModel requestUser)? onUpdateTapped,
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
    required TResult Function(UpdateUsahaUserEvent value) onUpdateTapped,
  }) {
    return onUpdateTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateUsahaUserEvent value)? onUpdateTapped,
  }) {
    return onUpdateTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateUsahaUserEvent value)? onUpdateTapped,
    required TResult orElse(),
  }) {
    if (onUpdateTapped != null) {
      return onUpdateTapped(this);
    }
    return orElse();
  }
}

abstract class UpdateUsahaUserEvent implements UpdateUsahaEvent {
  const factory UpdateUsahaUserEvent(
          {required final UpdateUsahaRequestModel requestUser}) =
      _$UpdateUsahaUserEventImpl;

  @override
  UpdateUsahaRequestModel get requestUser;
  @override
  @JsonKey(ignore: true)
  _$$UpdateUsahaUserEventImplCopyWith<_$UpdateUsahaUserEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateUsahaState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(UpdateUsahaRequestModel requestUser) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(UpdateUsahaRequestModel requestUser)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(UpdateUsahaRequestModel requestUser)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateUsahaInitialState value) initial,
    required TResult Function(UpdateUsahaLoadingState value) loading,
    required TResult Function(UpdateProfileErrorState value) error,
    required TResult Function(UpdateUsahaLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateUsahaInitialState value)? initial,
    TResult? Function(UpdateUsahaLoadingState value)? loading,
    TResult? Function(UpdateProfileErrorState value)? error,
    TResult? Function(UpdateUsahaLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateUsahaInitialState value)? initial,
    TResult Function(UpdateUsahaLoadingState value)? loading,
    TResult Function(UpdateProfileErrorState value)? error,
    TResult Function(UpdateUsahaLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUsahaStateCopyWith<$Res> {
  factory $UpdateUsahaStateCopyWith(
          UpdateUsahaState value, $Res Function(UpdateUsahaState) then) =
      _$UpdateUsahaStateCopyWithImpl<$Res, UpdateUsahaState>;
}

/// @nodoc
class _$UpdateUsahaStateCopyWithImpl<$Res, $Val extends UpdateUsahaState>
    implements $UpdateUsahaStateCopyWith<$Res> {
  _$UpdateUsahaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateUsahaInitialStateImplCopyWith<$Res> {
  factory _$$UpdateUsahaInitialStateImplCopyWith(
          _$UpdateUsahaInitialStateImpl value,
          $Res Function(_$UpdateUsahaInitialStateImpl) then) =
      __$$UpdateUsahaInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateUsahaInitialStateImplCopyWithImpl<$Res>
    extends _$UpdateUsahaStateCopyWithImpl<$Res, _$UpdateUsahaInitialStateImpl>
    implements _$$UpdateUsahaInitialStateImplCopyWith<$Res> {
  __$$UpdateUsahaInitialStateImplCopyWithImpl(
      _$UpdateUsahaInitialStateImpl _value,
      $Res Function(_$UpdateUsahaInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateUsahaInitialStateImpl implements UpdateUsahaInitialState {
  const _$UpdateUsahaInitialStateImpl();

  @override
  String toString() {
    return 'UpdateUsahaState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUsahaInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(UpdateUsahaRequestModel requestUser) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(UpdateUsahaRequestModel requestUser)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(UpdateUsahaRequestModel requestUser)? loaded,
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
    required TResult Function(UpdateUsahaInitialState value) initial,
    required TResult Function(UpdateUsahaLoadingState value) loading,
    required TResult Function(UpdateProfileErrorState value) error,
    required TResult Function(UpdateUsahaLoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateUsahaInitialState value)? initial,
    TResult? Function(UpdateUsahaLoadingState value)? loading,
    TResult? Function(UpdateProfileErrorState value)? error,
    TResult? Function(UpdateUsahaLoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateUsahaInitialState value)? initial,
    TResult Function(UpdateUsahaLoadingState value)? loading,
    TResult Function(UpdateProfileErrorState value)? error,
    TResult Function(UpdateUsahaLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UpdateUsahaInitialState implements UpdateUsahaState {
  const factory UpdateUsahaInitialState() = _$UpdateUsahaInitialStateImpl;
}

/// @nodoc
abstract class _$$UpdateUsahaLoadingStateImplCopyWith<$Res> {
  factory _$$UpdateUsahaLoadingStateImplCopyWith(
          _$UpdateUsahaLoadingStateImpl value,
          $Res Function(_$UpdateUsahaLoadingStateImpl) then) =
      __$$UpdateUsahaLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateUsahaLoadingStateImplCopyWithImpl<$Res>
    extends _$UpdateUsahaStateCopyWithImpl<$Res, _$UpdateUsahaLoadingStateImpl>
    implements _$$UpdateUsahaLoadingStateImplCopyWith<$Res> {
  __$$UpdateUsahaLoadingStateImplCopyWithImpl(
      _$UpdateUsahaLoadingStateImpl _value,
      $Res Function(_$UpdateUsahaLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateUsahaLoadingStateImpl implements UpdateUsahaLoadingState {
  const _$UpdateUsahaLoadingStateImpl();

  @override
  String toString() {
    return 'UpdateUsahaState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUsahaLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(UpdateUsahaRequestModel requestUser) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(UpdateUsahaRequestModel requestUser)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(UpdateUsahaRequestModel requestUser)? loaded,
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
    required TResult Function(UpdateUsahaInitialState value) initial,
    required TResult Function(UpdateUsahaLoadingState value) loading,
    required TResult Function(UpdateProfileErrorState value) error,
    required TResult Function(UpdateUsahaLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateUsahaInitialState value)? initial,
    TResult? Function(UpdateUsahaLoadingState value)? loading,
    TResult? Function(UpdateProfileErrorState value)? error,
    TResult? Function(UpdateUsahaLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateUsahaInitialState value)? initial,
    TResult Function(UpdateUsahaLoadingState value)? loading,
    TResult Function(UpdateProfileErrorState value)? error,
    TResult Function(UpdateUsahaLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UpdateUsahaLoadingState implements UpdateUsahaState {
  const factory UpdateUsahaLoadingState() = _$UpdateUsahaLoadingStateImpl;
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
    extends _$UpdateUsahaStateCopyWithImpl<$Res, _$UpdateProfileErrorStateImpl>
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
    return 'UpdateUsahaState.error(message: $message)';
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
    required TResult Function(UpdateUsahaRequestModel requestUser) loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(UpdateUsahaRequestModel requestUser)? loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(UpdateUsahaRequestModel requestUser)? loaded,
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
    required TResult Function(UpdateUsahaInitialState value) initial,
    required TResult Function(UpdateUsahaLoadingState value) loading,
    required TResult Function(UpdateProfileErrorState value) error,
    required TResult Function(UpdateUsahaLoadedState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateUsahaInitialState value)? initial,
    TResult? Function(UpdateUsahaLoadingState value)? loading,
    TResult? Function(UpdateProfileErrorState value)? error,
    TResult? Function(UpdateUsahaLoadedState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateUsahaInitialState value)? initial,
    TResult Function(UpdateUsahaLoadingState value)? loading,
    TResult Function(UpdateProfileErrorState value)? error,
    TResult Function(UpdateUsahaLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateProfileErrorState implements UpdateUsahaState {
  const factory UpdateProfileErrorState(final String message) =
      _$UpdateProfileErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$UpdateProfileErrorStateImplCopyWith<_$UpdateProfileErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUsahaLoadedStateImplCopyWith<$Res> {
  factory _$$UpdateUsahaLoadedStateImplCopyWith(
          _$UpdateUsahaLoadedStateImpl value,
          $Res Function(_$UpdateUsahaLoadedStateImpl) then) =
      __$$UpdateUsahaLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateUsahaRequestModel requestUser});
}

/// @nodoc
class __$$UpdateUsahaLoadedStateImplCopyWithImpl<$Res>
    extends _$UpdateUsahaStateCopyWithImpl<$Res, _$UpdateUsahaLoadedStateImpl>
    implements _$$UpdateUsahaLoadedStateImplCopyWith<$Res> {
  __$$UpdateUsahaLoadedStateImplCopyWithImpl(
      _$UpdateUsahaLoadedStateImpl _value,
      $Res Function(_$UpdateUsahaLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestUser = null,
  }) {
    return _then(_$UpdateUsahaLoadedStateImpl(
      requestUser: null == requestUser
          ? _value.requestUser
          : requestUser // ignore: cast_nullable_to_non_nullable
              as UpdateUsahaRequestModel,
    ));
  }
}

/// @nodoc

class _$UpdateUsahaLoadedStateImpl implements UpdateUsahaLoadedState {
  const _$UpdateUsahaLoadedStateImpl({required this.requestUser});

  @override
  final UpdateUsahaRequestModel requestUser;

  @override
  String toString() {
    return 'UpdateUsahaState.loaded(requestUser: $requestUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUsahaLoadedStateImpl &&
            (identical(other.requestUser, requestUser) ||
                other.requestUser == requestUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUsahaLoadedStateImplCopyWith<_$UpdateUsahaLoadedStateImpl>
      get copyWith => __$$UpdateUsahaLoadedStateImplCopyWithImpl<
          _$UpdateUsahaLoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(UpdateUsahaRequestModel requestUser) loaded,
  }) {
    return loaded(requestUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(UpdateUsahaRequestModel requestUser)? loaded,
  }) {
    return loaded?.call(requestUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(UpdateUsahaRequestModel requestUser)? loaded,
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
    required TResult Function(UpdateUsahaInitialState value) initial,
    required TResult Function(UpdateUsahaLoadingState value) loading,
    required TResult Function(UpdateProfileErrorState value) error,
    required TResult Function(UpdateUsahaLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateUsahaInitialState value)? initial,
    TResult? Function(UpdateUsahaLoadingState value)? loading,
    TResult? Function(UpdateProfileErrorState value)? error,
    TResult? Function(UpdateUsahaLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateUsahaInitialState value)? initial,
    TResult Function(UpdateUsahaLoadingState value)? loading,
    TResult Function(UpdateProfileErrorState value)? error,
    TResult Function(UpdateUsahaLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class UpdateUsahaLoadedState implements UpdateUsahaState {
  const factory UpdateUsahaLoadedState(
          {required final UpdateUsahaRequestModel requestUser}) =
      _$UpdateUsahaLoadedStateImpl;

  UpdateUsahaRequestModel get requestUser;
  @JsonKey(ignore: true)
  _$$UpdateUsahaLoadedStateImplCopyWith<_$UpdateUsahaLoadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
