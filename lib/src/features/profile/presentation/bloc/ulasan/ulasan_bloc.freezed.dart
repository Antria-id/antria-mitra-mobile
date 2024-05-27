// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ulasan_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UlasanEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetUlasan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetUlasan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetUlasan,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UlasanFetchDataEvent value) onGetUlasan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UlasanFetchDataEvent value)? onGetUlasan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UlasanFetchDataEvent value)? onGetUlasan,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UlasanEventCopyWith<$Res> {
  factory $UlasanEventCopyWith(
          UlasanEvent value, $Res Function(UlasanEvent) then) =
      _$UlasanEventCopyWithImpl<$Res, UlasanEvent>;
}

/// @nodoc
class _$UlasanEventCopyWithImpl<$Res, $Val extends UlasanEvent>
    implements $UlasanEventCopyWith<$Res> {
  _$UlasanEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UlasanFetchDataEventImplCopyWith<$Res> {
  factory _$$UlasanFetchDataEventImplCopyWith(_$UlasanFetchDataEventImpl value,
          $Res Function(_$UlasanFetchDataEventImpl) then) =
      __$$UlasanFetchDataEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UlasanFetchDataEventImplCopyWithImpl<$Res>
    extends _$UlasanEventCopyWithImpl<$Res, _$UlasanFetchDataEventImpl>
    implements _$$UlasanFetchDataEventImplCopyWith<$Res> {
  __$$UlasanFetchDataEventImplCopyWithImpl(_$UlasanFetchDataEventImpl _value,
      $Res Function(_$UlasanFetchDataEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UlasanFetchDataEventImpl implements UlasanFetchDataEvent {
  const _$UlasanFetchDataEventImpl();

  @override
  String toString() {
    return 'UlasanEvent.onGetUlasan()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UlasanFetchDataEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetUlasan,
  }) {
    return onGetUlasan();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetUlasan,
  }) {
    return onGetUlasan?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetUlasan,
    required TResult orElse(),
  }) {
    if (onGetUlasan != null) {
      return onGetUlasan();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UlasanFetchDataEvent value) onGetUlasan,
  }) {
    return onGetUlasan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UlasanFetchDataEvent value)? onGetUlasan,
  }) {
    return onGetUlasan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UlasanFetchDataEvent value)? onGetUlasan,
    required TResult orElse(),
  }) {
    if (onGetUlasan != null) {
      return onGetUlasan(this);
    }
    return orElse();
  }
}

abstract class UlasanFetchDataEvent implements UlasanEvent {
  const factory UlasanFetchDataEvent() = _$UlasanFetchDataEventImpl;
}

/// @nodoc
mixin _$UlasanState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<UlasanResponse> ulasan) loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<UlasanResponse> ulasan)? loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<UlasanResponse> ulasan)? loadedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UlasanInitialState value) initial,
    required TResult Function(UlasanLoadingState value) loading,
    required TResult Function(UlasanErrorState value) error,
    required TResult Function(UlasanLoadedState value) loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UlasanInitialState value)? initial,
    TResult? Function(UlasanLoadingState value)? loading,
    TResult? Function(UlasanErrorState value)? error,
    TResult? Function(UlasanLoadedState value)? loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UlasanInitialState value)? initial,
    TResult Function(UlasanLoadingState value)? loading,
    TResult Function(UlasanErrorState value)? error,
    TResult Function(UlasanLoadedState value)? loadedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UlasanStateCopyWith<$Res> {
  factory $UlasanStateCopyWith(
          UlasanState value, $Res Function(UlasanState) then) =
      _$UlasanStateCopyWithImpl<$Res, UlasanState>;
}

/// @nodoc
class _$UlasanStateCopyWithImpl<$Res, $Val extends UlasanState>
    implements $UlasanStateCopyWith<$Res> {
  _$UlasanStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UlasanInitialStateImplCopyWith<$Res> {
  factory _$$UlasanInitialStateImplCopyWith(_$UlasanInitialStateImpl value,
          $Res Function(_$UlasanInitialStateImpl) then) =
      __$$UlasanInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UlasanInitialStateImplCopyWithImpl<$Res>
    extends _$UlasanStateCopyWithImpl<$Res, _$UlasanInitialStateImpl>
    implements _$$UlasanInitialStateImplCopyWith<$Res> {
  __$$UlasanInitialStateImplCopyWithImpl(_$UlasanInitialStateImpl _value,
      $Res Function(_$UlasanInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UlasanInitialStateImpl implements UlasanInitialState {
  const _$UlasanInitialStateImpl();

  @override
  String toString() {
    return 'UlasanState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UlasanInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<UlasanResponse> ulasan) loadedState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<UlasanResponse> ulasan)? loadedState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<UlasanResponse> ulasan)? loadedState,
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
    required TResult Function(UlasanInitialState value) initial,
    required TResult Function(UlasanLoadingState value) loading,
    required TResult Function(UlasanErrorState value) error,
    required TResult Function(UlasanLoadedState value) loadedState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UlasanInitialState value)? initial,
    TResult? Function(UlasanLoadingState value)? loading,
    TResult? Function(UlasanErrorState value)? error,
    TResult? Function(UlasanLoadedState value)? loadedState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UlasanInitialState value)? initial,
    TResult Function(UlasanLoadingState value)? loading,
    TResult Function(UlasanErrorState value)? error,
    TResult Function(UlasanLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UlasanInitialState implements UlasanState {
  const factory UlasanInitialState() = _$UlasanInitialStateImpl;
}

/// @nodoc
abstract class _$$UlasanLoadingStateImplCopyWith<$Res> {
  factory _$$UlasanLoadingStateImplCopyWith(_$UlasanLoadingStateImpl value,
          $Res Function(_$UlasanLoadingStateImpl) then) =
      __$$UlasanLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UlasanLoadingStateImplCopyWithImpl<$Res>
    extends _$UlasanStateCopyWithImpl<$Res, _$UlasanLoadingStateImpl>
    implements _$$UlasanLoadingStateImplCopyWith<$Res> {
  __$$UlasanLoadingStateImplCopyWithImpl(_$UlasanLoadingStateImpl _value,
      $Res Function(_$UlasanLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UlasanLoadingStateImpl implements UlasanLoadingState {
  const _$UlasanLoadingStateImpl();

  @override
  String toString() {
    return 'UlasanState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UlasanLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<UlasanResponse> ulasan) loadedState,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<UlasanResponse> ulasan)? loadedState,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<UlasanResponse> ulasan)? loadedState,
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
    required TResult Function(UlasanInitialState value) initial,
    required TResult Function(UlasanLoadingState value) loading,
    required TResult Function(UlasanErrorState value) error,
    required TResult Function(UlasanLoadedState value) loadedState,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UlasanInitialState value)? initial,
    TResult? Function(UlasanLoadingState value)? loading,
    TResult? Function(UlasanErrorState value)? error,
    TResult? Function(UlasanLoadedState value)? loadedState,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UlasanInitialState value)? initial,
    TResult Function(UlasanLoadingState value)? loading,
    TResult Function(UlasanErrorState value)? error,
    TResult Function(UlasanLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UlasanLoadingState implements UlasanState {
  const factory UlasanLoadingState() = _$UlasanLoadingStateImpl;
}

/// @nodoc
abstract class _$$UlasanErrorStateImplCopyWith<$Res> {
  factory _$$UlasanErrorStateImplCopyWith(_$UlasanErrorStateImpl value,
          $Res Function(_$UlasanErrorStateImpl) then) =
      __$$UlasanErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UlasanErrorStateImplCopyWithImpl<$Res>
    extends _$UlasanStateCopyWithImpl<$Res, _$UlasanErrorStateImpl>
    implements _$$UlasanErrorStateImplCopyWith<$Res> {
  __$$UlasanErrorStateImplCopyWithImpl(_$UlasanErrorStateImpl _value,
      $Res Function(_$UlasanErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UlasanErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UlasanErrorStateImpl implements UlasanErrorState {
  const _$UlasanErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'UlasanState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UlasanErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UlasanErrorStateImplCopyWith<_$UlasanErrorStateImpl> get copyWith =>
      __$$UlasanErrorStateImplCopyWithImpl<_$UlasanErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<UlasanResponse> ulasan) loadedState,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<UlasanResponse> ulasan)? loadedState,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<UlasanResponse> ulasan)? loadedState,
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
    required TResult Function(UlasanInitialState value) initial,
    required TResult Function(UlasanLoadingState value) loading,
    required TResult Function(UlasanErrorState value) error,
    required TResult Function(UlasanLoadedState value) loadedState,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UlasanInitialState value)? initial,
    TResult? Function(UlasanLoadingState value)? loading,
    TResult? Function(UlasanErrorState value)? error,
    TResult? Function(UlasanLoadedState value)? loadedState,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UlasanInitialState value)? initial,
    TResult Function(UlasanLoadingState value)? loading,
    TResult Function(UlasanErrorState value)? error,
    TResult Function(UlasanLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UlasanErrorState implements UlasanState {
  const factory UlasanErrorState(final String message) = _$UlasanErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$UlasanErrorStateImplCopyWith<_$UlasanErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UlasanLoadedStateImplCopyWith<$Res> {
  factory _$$UlasanLoadedStateImplCopyWith(_$UlasanLoadedStateImpl value,
          $Res Function(_$UlasanLoadedStateImpl) then) =
      __$$UlasanLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UlasanResponse> ulasan});
}

/// @nodoc
class __$$UlasanLoadedStateImplCopyWithImpl<$Res>
    extends _$UlasanStateCopyWithImpl<$Res, _$UlasanLoadedStateImpl>
    implements _$$UlasanLoadedStateImplCopyWith<$Res> {
  __$$UlasanLoadedStateImplCopyWithImpl(_$UlasanLoadedStateImpl _value,
      $Res Function(_$UlasanLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ulasan = null,
  }) {
    return _then(_$UlasanLoadedStateImpl(
      ulasan: null == ulasan
          ? _value._ulasan
          : ulasan // ignore: cast_nullable_to_non_nullable
              as List<UlasanResponse>,
    ));
  }
}

/// @nodoc

class _$UlasanLoadedStateImpl implements UlasanLoadedState {
  const _$UlasanLoadedStateImpl({required final List<UlasanResponse> ulasan})
      : _ulasan = ulasan;

  final List<UlasanResponse> _ulasan;
  @override
  List<UlasanResponse> get ulasan {
    if (_ulasan is EqualUnmodifiableListView) return _ulasan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ulasan);
  }

  @override
  String toString() {
    return 'UlasanState.loadedState(ulasan: $ulasan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UlasanLoadedStateImpl &&
            const DeepCollectionEquality().equals(other._ulasan, _ulasan));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ulasan));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UlasanLoadedStateImplCopyWith<_$UlasanLoadedStateImpl> get copyWith =>
      __$$UlasanLoadedStateImplCopyWithImpl<_$UlasanLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<UlasanResponse> ulasan) loadedState,
  }) {
    return loadedState(ulasan);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<UlasanResponse> ulasan)? loadedState,
  }) {
    return loadedState?.call(ulasan);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<UlasanResponse> ulasan)? loadedState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(ulasan);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UlasanInitialState value) initial,
    required TResult Function(UlasanLoadingState value) loading,
    required TResult Function(UlasanErrorState value) error,
    required TResult Function(UlasanLoadedState value) loadedState,
  }) {
    return loadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UlasanInitialState value)? initial,
    TResult? Function(UlasanLoadingState value)? loading,
    TResult? Function(UlasanErrorState value)? error,
    TResult? Function(UlasanLoadedState value)? loadedState,
  }) {
    return loadedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UlasanInitialState value)? initial,
    TResult Function(UlasanLoadingState value)? loading,
    TResult Function(UlasanErrorState value)? error,
    TResult Function(UlasanLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(this);
    }
    return orElse();
  }
}

abstract class UlasanLoadedState implements UlasanState {
  const factory UlasanLoadedState(
      {required final List<UlasanResponse> ulasan}) = _$UlasanLoadedStateImpl;

  List<UlasanResponse> get ulasan;
  @JsonKey(ignore: true)
  _$$UlasanLoadedStateImplCopyWith<_$UlasanLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
