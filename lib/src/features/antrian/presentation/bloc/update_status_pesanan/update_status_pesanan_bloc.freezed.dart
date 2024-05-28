// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_status_pesanan_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateStatusPesananEvent {
  StatusPesananRequestModel get requestUser =>
      throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StatusPesananRequestModel requestUser, int id)
        onUpdateTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StatusPesananRequestModel requestUser, int id)?
        onUpdateTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StatusPesananRequestModel requestUser, int id)?
        onUpdateTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdatePesananUserEvent value) onUpdateTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdatePesananUserEvent value)? onUpdateTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdatePesananUserEvent value)? onUpdateTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateStatusPesananEventCopyWith<UpdateStatusPesananEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateStatusPesananEventCopyWith<$Res> {
  factory $UpdateStatusPesananEventCopyWith(UpdateStatusPesananEvent value,
          $Res Function(UpdateStatusPesananEvent) then) =
      _$UpdateStatusPesananEventCopyWithImpl<$Res, UpdateStatusPesananEvent>;
  @useResult
  $Res call({StatusPesananRequestModel requestUser, int id});
}

/// @nodoc
class _$UpdateStatusPesananEventCopyWithImpl<$Res,
        $Val extends UpdateStatusPesananEvent>
    implements $UpdateStatusPesananEventCopyWith<$Res> {
  _$UpdateStatusPesananEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestUser = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      requestUser: null == requestUser
          ? _value.requestUser
          : requestUser // ignore: cast_nullable_to_non_nullable
              as StatusPesananRequestModel,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdatePesananUserEventImplCopyWith<$Res>
    implements $UpdateStatusPesananEventCopyWith<$Res> {
  factory _$$UpdatePesananUserEventImplCopyWith(
          _$UpdatePesananUserEventImpl value,
          $Res Function(_$UpdatePesananUserEventImpl) then) =
      __$$UpdatePesananUserEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StatusPesananRequestModel requestUser, int id});
}

/// @nodoc
class __$$UpdatePesananUserEventImplCopyWithImpl<$Res>
    extends _$UpdateStatusPesananEventCopyWithImpl<$Res,
        _$UpdatePesananUserEventImpl>
    implements _$$UpdatePesananUserEventImplCopyWith<$Res> {
  __$$UpdatePesananUserEventImplCopyWithImpl(
      _$UpdatePesananUserEventImpl _value,
      $Res Function(_$UpdatePesananUserEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestUser = null,
    Object? id = null,
  }) {
    return _then(_$UpdatePesananUserEventImpl(
      requestUser: null == requestUser
          ? _value.requestUser
          : requestUser // ignore: cast_nullable_to_non_nullable
              as StatusPesananRequestModel,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdatePesananUserEventImpl implements UpdatePesananUserEvent {
  const _$UpdatePesananUserEventImpl(
      {required this.requestUser, required this.id});

  @override
  final StatusPesananRequestModel requestUser;
  @override
  final int id;

  @override
  String toString() {
    return 'UpdateStatusPesananEvent.onUpdateTapped(requestUser: $requestUser, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePesananUserEventImpl &&
            (identical(other.requestUser, requestUser) ||
                other.requestUser == requestUser) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestUser, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePesananUserEventImplCopyWith<_$UpdatePesananUserEventImpl>
      get copyWith => __$$UpdatePesananUserEventImplCopyWithImpl<
          _$UpdatePesananUserEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StatusPesananRequestModel requestUser, int id)
        onUpdateTapped,
  }) {
    return onUpdateTapped(requestUser, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StatusPesananRequestModel requestUser, int id)?
        onUpdateTapped,
  }) {
    return onUpdateTapped?.call(requestUser, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StatusPesananRequestModel requestUser, int id)?
        onUpdateTapped,
    required TResult orElse(),
  }) {
    if (onUpdateTapped != null) {
      return onUpdateTapped(requestUser, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdatePesananUserEvent value) onUpdateTapped,
  }) {
    return onUpdateTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdatePesananUserEvent value)? onUpdateTapped,
  }) {
    return onUpdateTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdatePesananUserEvent value)? onUpdateTapped,
    required TResult orElse(),
  }) {
    if (onUpdateTapped != null) {
      return onUpdateTapped(this);
    }
    return orElse();
  }
}

abstract class UpdatePesananUserEvent implements UpdateStatusPesananEvent {
  const factory UpdatePesananUserEvent(
      {required final StatusPesananRequestModel requestUser,
      required final int id}) = _$UpdatePesananUserEventImpl;

  @override
  StatusPesananRequestModel get requestUser;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$UpdatePesananUserEventImplCopyWith<_$UpdatePesananUserEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateStatusPesananState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(StatusPesananRequestModel requestUser) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(StatusPesananRequestModel requestUser)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(StatusPesananRequestModel requestUser)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateStatusPesananInitialState value) initial,
    required TResult Function(UpdateStatusPesananLoadingState value) loading,
    required TResult Function(UpdateStatusPesananErrorState value) error,
    required TResult Function(UpdateStatusPesananLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateStatusPesananInitialState value)? initial,
    TResult? Function(UpdateStatusPesananLoadingState value)? loading,
    TResult? Function(UpdateStatusPesananErrorState value)? error,
    TResult? Function(UpdateStatusPesananLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateStatusPesananInitialState value)? initial,
    TResult Function(UpdateStatusPesananLoadingState value)? loading,
    TResult Function(UpdateStatusPesananErrorState value)? error,
    TResult Function(UpdateStatusPesananLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateStatusPesananStateCopyWith<$Res> {
  factory $UpdateStatusPesananStateCopyWith(UpdateStatusPesananState value,
          $Res Function(UpdateStatusPesananState) then) =
      _$UpdateStatusPesananStateCopyWithImpl<$Res, UpdateStatusPesananState>;
}

/// @nodoc
class _$UpdateStatusPesananStateCopyWithImpl<$Res,
        $Val extends UpdateStatusPesananState>
    implements $UpdateStatusPesananStateCopyWith<$Res> {
  _$UpdateStatusPesananStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateStatusPesananInitialStateImplCopyWith<$Res> {
  factory _$$UpdateStatusPesananInitialStateImplCopyWith(
          _$UpdateStatusPesananInitialStateImpl value,
          $Res Function(_$UpdateStatusPesananInitialStateImpl) then) =
      __$$UpdateStatusPesananInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateStatusPesananInitialStateImplCopyWithImpl<$Res>
    extends _$UpdateStatusPesananStateCopyWithImpl<$Res,
        _$UpdateStatusPesananInitialStateImpl>
    implements _$$UpdateStatusPesananInitialStateImplCopyWith<$Res> {
  __$$UpdateStatusPesananInitialStateImplCopyWithImpl(
      _$UpdateStatusPesananInitialStateImpl _value,
      $Res Function(_$UpdateStatusPesananInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateStatusPesananInitialStateImpl
    implements UpdateStatusPesananInitialState {
  const _$UpdateStatusPesananInitialStateImpl();

  @override
  String toString() {
    return 'UpdateStatusPesananState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStatusPesananInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(StatusPesananRequestModel requestUser) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(StatusPesananRequestModel requestUser)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(StatusPesananRequestModel requestUser)? loaded,
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
    required TResult Function(UpdateStatusPesananInitialState value) initial,
    required TResult Function(UpdateStatusPesananLoadingState value) loading,
    required TResult Function(UpdateStatusPesananErrorState value) error,
    required TResult Function(UpdateStatusPesananLoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateStatusPesananInitialState value)? initial,
    TResult? Function(UpdateStatusPesananLoadingState value)? loading,
    TResult? Function(UpdateStatusPesananErrorState value)? error,
    TResult? Function(UpdateStatusPesananLoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateStatusPesananInitialState value)? initial,
    TResult Function(UpdateStatusPesananLoadingState value)? loading,
    TResult Function(UpdateStatusPesananErrorState value)? error,
    TResult Function(UpdateStatusPesananLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UpdateStatusPesananInitialState
    implements UpdateStatusPesananState {
  const factory UpdateStatusPesananInitialState() =
      _$UpdateStatusPesananInitialStateImpl;
}

/// @nodoc
abstract class _$$UpdateStatusPesananLoadingStateImplCopyWith<$Res> {
  factory _$$UpdateStatusPesananLoadingStateImplCopyWith(
          _$UpdateStatusPesananLoadingStateImpl value,
          $Res Function(_$UpdateStatusPesananLoadingStateImpl) then) =
      __$$UpdateStatusPesananLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateStatusPesananLoadingStateImplCopyWithImpl<$Res>
    extends _$UpdateStatusPesananStateCopyWithImpl<$Res,
        _$UpdateStatusPesananLoadingStateImpl>
    implements _$$UpdateStatusPesananLoadingStateImplCopyWith<$Res> {
  __$$UpdateStatusPesananLoadingStateImplCopyWithImpl(
      _$UpdateStatusPesananLoadingStateImpl _value,
      $Res Function(_$UpdateStatusPesananLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateStatusPesananLoadingStateImpl
    implements UpdateStatusPesananLoadingState {
  const _$UpdateStatusPesananLoadingStateImpl();

  @override
  String toString() {
    return 'UpdateStatusPesananState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStatusPesananLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(StatusPesananRequestModel requestUser) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(StatusPesananRequestModel requestUser)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(StatusPesananRequestModel requestUser)? loaded,
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
    required TResult Function(UpdateStatusPesananInitialState value) initial,
    required TResult Function(UpdateStatusPesananLoadingState value) loading,
    required TResult Function(UpdateStatusPesananErrorState value) error,
    required TResult Function(UpdateStatusPesananLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateStatusPesananInitialState value)? initial,
    TResult? Function(UpdateStatusPesananLoadingState value)? loading,
    TResult? Function(UpdateStatusPesananErrorState value)? error,
    TResult? Function(UpdateStatusPesananLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateStatusPesananInitialState value)? initial,
    TResult Function(UpdateStatusPesananLoadingState value)? loading,
    TResult Function(UpdateStatusPesananErrorState value)? error,
    TResult Function(UpdateStatusPesananLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UpdateStatusPesananLoadingState
    implements UpdateStatusPesananState {
  const factory UpdateStatusPesananLoadingState() =
      _$UpdateStatusPesananLoadingStateImpl;
}

/// @nodoc
abstract class _$$UpdateStatusPesananErrorStateImplCopyWith<$Res> {
  factory _$$UpdateStatusPesananErrorStateImplCopyWith(
          _$UpdateStatusPesananErrorStateImpl value,
          $Res Function(_$UpdateStatusPesananErrorStateImpl) then) =
      __$$UpdateStatusPesananErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UpdateStatusPesananErrorStateImplCopyWithImpl<$Res>
    extends _$UpdateStatusPesananStateCopyWithImpl<$Res,
        _$UpdateStatusPesananErrorStateImpl>
    implements _$$UpdateStatusPesananErrorStateImplCopyWith<$Res> {
  __$$UpdateStatusPesananErrorStateImplCopyWithImpl(
      _$UpdateStatusPesananErrorStateImpl _value,
      $Res Function(_$UpdateStatusPesananErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UpdateStatusPesananErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateStatusPesananErrorStateImpl
    implements UpdateStatusPesananErrorState {
  const _$UpdateStatusPesananErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'UpdateStatusPesananState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStatusPesananErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStatusPesananErrorStateImplCopyWith<
          _$UpdateStatusPesananErrorStateImpl>
      get copyWith => __$$UpdateStatusPesananErrorStateImplCopyWithImpl<
          _$UpdateStatusPesananErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(StatusPesananRequestModel requestUser) loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(StatusPesananRequestModel requestUser)? loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(StatusPesananRequestModel requestUser)? loaded,
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
    required TResult Function(UpdateStatusPesananInitialState value) initial,
    required TResult Function(UpdateStatusPesananLoadingState value) loading,
    required TResult Function(UpdateStatusPesananErrorState value) error,
    required TResult Function(UpdateStatusPesananLoadedState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateStatusPesananInitialState value)? initial,
    TResult? Function(UpdateStatusPesananLoadingState value)? loading,
    TResult? Function(UpdateStatusPesananErrorState value)? error,
    TResult? Function(UpdateStatusPesananLoadedState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateStatusPesananInitialState value)? initial,
    TResult Function(UpdateStatusPesananLoadingState value)? loading,
    TResult Function(UpdateStatusPesananErrorState value)? error,
    TResult Function(UpdateStatusPesananLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateStatusPesananErrorState
    implements UpdateStatusPesananState {
  const factory UpdateStatusPesananErrorState(final String message) =
      _$UpdateStatusPesananErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$UpdateStatusPesananErrorStateImplCopyWith<
          _$UpdateStatusPesananErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateStatusPesananLoadedStateImplCopyWith<$Res> {
  factory _$$UpdateStatusPesananLoadedStateImplCopyWith(
          _$UpdateStatusPesananLoadedStateImpl value,
          $Res Function(_$UpdateStatusPesananLoadedStateImpl) then) =
      __$$UpdateStatusPesananLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StatusPesananRequestModel requestUser});
}

/// @nodoc
class __$$UpdateStatusPesananLoadedStateImplCopyWithImpl<$Res>
    extends _$UpdateStatusPesananStateCopyWithImpl<$Res,
        _$UpdateStatusPesananLoadedStateImpl>
    implements _$$UpdateStatusPesananLoadedStateImplCopyWith<$Res> {
  __$$UpdateStatusPesananLoadedStateImplCopyWithImpl(
      _$UpdateStatusPesananLoadedStateImpl _value,
      $Res Function(_$UpdateStatusPesananLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestUser = null,
  }) {
    return _then(_$UpdateStatusPesananLoadedStateImpl(
      requestUser: null == requestUser
          ? _value.requestUser
          : requestUser // ignore: cast_nullable_to_non_nullable
              as StatusPesananRequestModel,
    ));
  }
}

/// @nodoc

class _$UpdateStatusPesananLoadedStateImpl
    implements UpdateStatusPesananLoadedState {
  const _$UpdateStatusPesananLoadedStateImpl({required this.requestUser});

  @override
  final StatusPesananRequestModel requestUser;

  @override
  String toString() {
    return 'UpdateStatusPesananState.loaded(requestUser: $requestUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStatusPesananLoadedStateImpl &&
            (identical(other.requestUser, requestUser) ||
                other.requestUser == requestUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStatusPesananLoadedStateImplCopyWith<
          _$UpdateStatusPesananLoadedStateImpl>
      get copyWith => __$$UpdateStatusPesananLoadedStateImplCopyWithImpl<
          _$UpdateStatusPesananLoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(StatusPesananRequestModel requestUser) loaded,
  }) {
    return loaded(requestUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(StatusPesananRequestModel requestUser)? loaded,
  }) {
    return loaded?.call(requestUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(StatusPesananRequestModel requestUser)? loaded,
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
    required TResult Function(UpdateStatusPesananInitialState value) initial,
    required TResult Function(UpdateStatusPesananLoadingState value) loading,
    required TResult Function(UpdateStatusPesananErrorState value) error,
    required TResult Function(UpdateStatusPesananLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateStatusPesananInitialState value)? initial,
    TResult? Function(UpdateStatusPesananLoadingState value)? loading,
    TResult? Function(UpdateStatusPesananErrorState value)? error,
    TResult? Function(UpdateStatusPesananLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateStatusPesananInitialState value)? initial,
    TResult Function(UpdateStatusPesananLoadingState value)? loading,
    TResult Function(UpdateStatusPesananErrorState value)? error,
    TResult Function(UpdateStatusPesananLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class UpdateStatusPesananLoadedState
    implements UpdateStatusPesananState {
  const factory UpdateStatusPesananLoadedState(
          {required final StatusPesananRequestModel requestUser}) =
      _$UpdateStatusPesananLoadedStateImpl;

  StatusPesananRequestModel get requestUser;
  @JsonKey(ignore: true)
  _$$UpdateStatusPesananLoadedStateImplCopyWith<
          _$UpdateStatusPesananLoadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
