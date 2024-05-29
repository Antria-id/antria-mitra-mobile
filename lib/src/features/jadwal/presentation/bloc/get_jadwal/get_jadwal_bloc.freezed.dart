// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_jadwal_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetJadwalEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetJadwal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetJadwal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetJadwal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetJadwalFetchDataEvent value) onGetJadwal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetJadwalFetchDataEvent value)? onGetJadwal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetJadwalFetchDataEvent value)? onGetJadwal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetJadwalEventCopyWith<$Res> {
  factory $GetJadwalEventCopyWith(
          GetJadwalEvent value, $Res Function(GetJadwalEvent) then) =
      _$GetJadwalEventCopyWithImpl<$Res, GetJadwalEvent>;
}

/// @nodoc
class _$GetJadwalEventCopyWithImpl<$Res, $Val extends GetJadwalEvent>
    implements $GetJadwalEventCopyWith<$Res> {
  _$GetJadwalEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetJadwalFetchDataEventImplCopyWith<$Res> {
  factory _$$GetJadwalFetchDataEventImplCopyWith(
          _$GetJadwalFetchDataEventImpl value,
          $Res Function(_$GetJadwalFetchDataEventImpl) then) =
      __$$GetJadwalFetchDataEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetJadwalFetchDataEventImplCopyWithImpl<$Res>
    extends _$GetJadwalEventCopyWithImpl<$Res, _$GetJadwalFetchDataEventImpl>
    implements _$$GetJadwalFetchDataEventImplCopyWith<$Res> {
  __$$GetJadwalFetchDataEventImplCopyWithImpl(
      _$GetJadwalFetchDataEventImpl _value,
      $Res Function(_$GetJadwalFetchDataEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetJadwalFetchDataEventImpl implements GetJadwalFetchDataEvent {
  const _$GetJadwalFetchDataEventImpl();

  @override
  String toString() {
    return 'GetJadwalEvent.onGetJadwal()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetJadwalFetchDataEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetJadwal,
  }) {
    return onGetJadwal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetJadwal,
  }) {
    return onGetJadwal?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetJadwal,
    required TResult orElse(),
  }) {
    if (onGetJadwal != null) {
      return onGetJadwal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetJadwalFetchDataEvent value) onGetJadwal,
  }) {
    return onGetJadwal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetJadwalFetchDataEvent value)? onGetJadwal,
  }) {
    return onGetJadwal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetJadwalFetchDataEvent value)? onGetJadwal,
    required TResult orElse(),
  }) {
    if (onGetJadwal != null) {
      return onGetJadwal(this);
    }
    return orElse();
  }
}

abstract class GetJadwalFetchDataEvent implements GetJadwalEvent {
  const factory GetJadwalFetchDataEvent() = _$GetJadwalFetchDataEventImpl;
}

/// @nodoc
mixin _$GetJadwalState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(MitraModel mitraModel) loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(MitraModel mitraModel)? loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(MitraModel mitraModel)? loadedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetJadwalStateInitialState value) initial,
    required TResult Function(GetJadwalStateLoadingState value) loading,
    required TResult Function(GetJadwalStateErrorState value) error,
    required TResult Function(GetJadwalStateLoadedState value) loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetJadwalStateInitialState value)? initial,
    TResult? Function(GetJadwalStateLoadingState value)? loading,
    TResult? Function(GetJadwalStateErrorState value)? error,
    TResult? Function(GetJadwalStateLoadedState value)? loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetJadwalStateInitialState value)? initial,
    TResult Function(GetJadwalStateLoadingState value)? loading,
    TResult Function(GetJadwalStateErrorState value)? error,
    TResult Function(GetJadwalStateLoadedState value)? loadedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetJadwalStateCopyWith<$Res> {
  factory $GetJadwalStateCopyWith(
          GetJadwalState value, $Res Function(GetJadwalState) then) =
      _$GetJadwalStateCopyWithImpl<$Res, GetJadwalState>;
}

/// @nodoc
class _$GetJadwalStateCopyWithImpl<$Res, $Val extends GetJadwalState>
    implements $GetJadwalStateCopyWith<$Res> {
  _$GetJadwalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetJadwalStateInitialStateImplCopyWith<$Res> {
  factory _$$GetJadwalStateInitialStateImplCopyWith(
          _$GetJadwalStateInitialStateImpl value,
          $Res Function(_$GetJadwalStateInitialStateImpl) then) =
      __$$GetJadwalStateInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetJadwalStateInitialStateImplCopyWithImpl<$Res>
    extends _$GetJadwalStateCopyWithImpl<$Res, _$GetJadwalStateInitialStateImpl>
    implements _$$GetJadwalStateInitialStateImplCopyWith<$Res> {
  __$$GetJadwalStateInitialStateImplCopyWithImpl(
      _$GetJadwalStateInitialStateImpl _value,
      $Res Function(_$GetJadwalStateInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetJadwalStateInitialStateImpl implements GetJadwalStateInitialState {
  const _$GetJadwalStateInitialStateImpl();

  @override
  String toString() {
    return 'GetJadwalState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetJadwalStateInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(MitraModel mitraModel) loadedState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(MitraModel mitraModel)? loadedState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(MitraModel mitraModel)? loadedState,
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
    required TResult Function(GetJadwalStateInitialState value) initial,
    required TResult Function(GetJadwalStateLoadingState value) loading,
    required TResult Function(GetJadwalStateErrorState value) error,
    required TResult Function(GetJadwalStateLoadedState value) loadedState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetJadwalStateInitialState value)? initial,
    TResult? Function(GetJadwalStateLoadingState value)? loading,
    TResult? Function(GetJadwalStateErrorState value)? error,
    TResult? Function(GetJadwalStateLoadedState value)? loadedState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetJadwalStateInitialState value)? initial,
    TResult Function(GetJadwalStateLoadingState value)? loading,
    TResult Function(GetJadwalStateErrorState value)? error,
    TResult Function(GetJadwalStateLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GetJadwalStateInitialState implements GetJadwalState {
  const factory GetJadwalStateInitialState() = _$GetJadwalStateInitialStateImpl;
}

/// @nodoc
abstract class _$$GetJadwalStateLoadingStateImplCopyWith<$Res> {
  factory _$$GetJadwalStateLoadingStateImplCopyWith(
          _$GetJadwalStateLoadingStateImpl value,
          $Res Function(_$GetJadwalStateLoadingStateImpl) then) =
      __$$GetJadwalStateLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetJadwalStateLoadingStateImplCopyWithImpl<$Res>
    extends _$GetJadwalStateCopyWithImpl<$Res, _$GetJadwalStateLoadingStateImpl>
    implements _$$GetJadwalStateLoadingStateImplCopyWith<$Res> {
  __$$GetJadwalStateLoadingStateImplCopyWithImpl(
      _$GetJadwalStateLoadingStateImpl _value,
      $Res Function(_$GetJadwalStateLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetJadwalStateLoadingStateImpl implements GetJadwalStateLoadingState {
  const _$GetJadwalStateLoadingStateImpl();

  @override
  String toString() {
    return 'GetJadwalState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetJadwalStateLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(MitraModel mitraModel) loadedState,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(MitraModel mitraModel)? loadedState,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(MitraModel mitraModel)? loadedState,
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
    required TResult Function(GetJadwalStateInitialState value) initial,
    required TResult Function(GetJadwalStateLoadingState value) loading,
    required TResult Function(GetJadwalStateErrorState value) error,
    required TResult Function(GetJadwalStateLoadedState value) loadedState,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetJadwalStateInitialState value)? initial,
    TResult? Function(GetJadwalStateLoadingState value)? loading,
    TResult? Function(GetJadwalStateErrorState value)? error,
    TResult? Function(GetJadwalStateLoadedState value)? loadedState,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetJadwalStateInitialState value)? initial,
    TResult Function(GetJadwalStateLoadingState value)? loading,
    TResult Function(GetJadwalStateErrorState value)? error,
    TResult Function(GetJadwalStateLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetJadwalStateLoadingState implements GetJadwalState {
  const factory GetJadwalStateLoadingState() = _$GetJadwalStateLoadingStateImpl;
}

/// @nodoc
abstract class _$$GetJadwalStateErrorStateImplCopyWith<$Res> {
  factory _$$GetJadwalStateErrorStateImplCopyWith(
          _$GetJadwalStateErrorStateImpl value,
          $Res Function(_$GetJadwalStateErrorStateImpl) then) =
      __$$GetJadwalStateErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$GetJadwalStateErrorStateImplCopyWithImpl<$Res>
    extends _$GetJadwalStateCopyWithImpl<$Res, _$GetJadwalStateErrorStateImpl>
    implements _$$GetJadwalStateErrorStateImplCopyWith<$Res> {
  __$$GetJadwalStateErrorStateImplCopyWithImpl(
      _$GetJadwalStateErrorStateImpl _value,
      $Res Function(_$GetJadwalStateErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$GetJadwalStateErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetJadwalStateErrorStateImpl implements GetJadwalStateErrorState {
  const _$GetJadwalStateErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'GetJadwalState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetJadwalStateErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetJadwalStateErrorStateImplCopyWith<_$GetJadwalStateErrorStateImpl>
      get copyWith => __$$GetJadwalStateErrorStateImplCopyWithImpl<
          _$GetJadwalStateErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(MitraModel mitraModel) loadedState,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(MitraModel mitraModel)? loadedState,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(MitraModel mitraModel)? loadedState,
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
    required TResult Function(GetJadwalStateInitialState value) initial,
    required TResult Function(GetJadwalStateLoadingState value) loading,
    required TResult Function(GetJadwalStateErrorState value) error,
    required TResult Function(GetJadwalStateLoadedState value) loadedState,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetJadwalStateInitialState value)? initial,
    TResult? Function(GetJadwalStateLoadingState value)? loading,
    TResult? Function(GetJadwalStateErrorState value)? error,
    TResult? Function(GetJadwalStateLoadedState value)? loadedState,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetJadwalStateInitialState value)? initial,
    TResult Function(GetJadwalStateLoadingState value)? loading,
    TResult Function(GetJadwalStateErrorState value)? error,
    TResult Function(GetJadwalStateLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetJadwalStateErrorState implements GetJadwalState {
  const factory GetJadwalStateErrorState(final String message) =
      _$GetJadwalStateErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$GetJadwalStateErrorStateImplCopyWith<_$GetJadwalStateErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetJadwalStateLoadedStateImplCopyWith<$Res> {
  factory _$$GetJadwalStateLoadedStateImplCopyWith(
          _$GetJadwalStateLoadedStateImpl value,
          $Res Function(_$GetJadwalStateLoadedStateImpl) then) =
      __$$GetJadwalStateLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MitraModel mitraModel});
}

/// @nodoc
class __$$GetJadwalStateLoadedStateImplCopyWithImpl<$Res>
    extends _$GetJadwalStateCopyWithImpl<$Res, _$GetJadwalStateLoadedStateImpl>
    implements _$$GetJadwalStateLoadedStateImplCopyWith<$Res> {
  __$$GetJadwalStateLoadedStateImplCopyWithImpl(
      _$GetJadwalStateLoadedStateImpl _value,
      $Res Function(_$GetJadwalStateLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mitraModel = null,
  }) {
    return _then(_$GetJadwalStateLoadedStateImpl(
      mitraModel: null == mitraModel
          ? _value.mitraModel
          : mitraModel // ignore: cast_nullable_to_non_nullable
              as MitraModel,
    ));
  }
}

/// @nodoc

class _$GetJadwalStateLoadedStateImpl implements GetJadwalStateLoadedState {
  const _$GetJadwalStateLoadedStateImpl({required this.mitraModel});

  @override
  final MitraModel mitraModel;

  @override
  String toString() {
    return 'GetJadwalState.loadedState(mitraModel: $mitraModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetJadwalStateLoadedStateImpl &&
            (identical(other.mitraModel, mitraModel) ||
                other.mitraModel == mitraModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mitraModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetJadwalStateLoadedStateImplCopyWith<_$GetJadwalStateLoadedStateImpl>
      get copyWith => __$$GetJadwalStateLoadedStateImplCopyWithImpl<
          _$GetJadwalStateLoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(MitraModel mitraModel) loadedState,
  }) {
    return loadedState(mitraModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(MitraModel mitraModel)? loadedState,
  }) {
    return loadedState?.call(mitraModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(MitraModel mitraModel)? loadedState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(mitraModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetJadwalStateInitialState value) initial,
    required TResult Function(GetJadwalStateLoadingState value) loading,
    required TResult Function(GetJadwalStateErrorState value) error,
    required TResult Function(GetJadwalStateLoadedState value) loadedState,
  }) {
    return loadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetJadwalStateInitialState value)? initial,
    TResult? Function(GetJadwalStateLoadingState value)? loading,
    TResult? Function(GetJadwalStateErrorState value)? error,
    TResult? Function(GetJadwalStateLoadedState value)? loadedState,
  }) {
    return loadedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetJadwalStateInitialState value)? initial,
    TResult Function(GetJadwalStateLoadingState value)? loading,
    TResult Function(GetJadwalStateErrorState value)? error,
    TResult Function(GetJadwalStateLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(this);
    }
    return orElse();
  }
}

abstract class GetJadwalStateLoadedState implements GetJadwalState {
  const factory GetJadwalStateLoadedState(
      {required final MitraModel mitraModel}) = _$GetJadwalStateLoadedStateImpl;

  MitraModel get mitraModel;
  @JsonKey(ignore: true)
  _$$GetJadwalStateLoadedStateImplCopyWith<_$GetJadwalStateLoadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
