// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'riwayat_transaksi_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RiwayatTransaksiEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetRiwayat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetRiwayat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetRiwayat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRiwayatFetchDataEvent value) onGetRiwayat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRiwayatFetchDataEvent value)? onGetRiwayat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRiwayatFetchDataEvent value)? onGetRiwayat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RiwayatTransaksiEventCopyWith<$Res> {
  factory $RiwayatTransaksiEventCopyWith(RiwayatTransaksiEvent value,
          $Res Function(RiwayatTransaksiEvent) then) =
      _$RiwayatTransaksiEventCopyWithImpl<$Res, RiwayatTransaksiEvent>;
}

/// @nodoc
class _$RiwayatTransaksiEventCopyWithImpl<$Res,
        $Val extends RiwayatTransaksiEvent>
    implements $RiwayatTransaksiEventCopyWith<$Res> {
  _$RiwayatTransaksiEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetRiwayatFetchDataEventImplCopyWith<$Res> {
  factory _$$GetRiwayatFetchDataEventImplCopyWith(
          _$GetRiwayatFetchDataEventImpl value,
          $Res Function(_$GetRiwayatFetchDataEventImpl) then) =
      __$$GetRiwayatFetchDataEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetRiwayatFetchDataEventImplCopyWithImpl<$Res>
    extends _$RiwayatTransaksiEventCopyWithImpl<$Res,
        _$GetRiwayatFetchDataEventImpl>
    implements _$$GetRiwayatFetchDataEventImplCopyWith<$Res> {
  __$$GetRiwayatFetchDataEventImplCopyWithImpl(
      _$GetRiwayatFetchDataEventImpl _value,
      $Res Function(_$GetRiwayatFetchDataEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetRiwayatFetchDataEventImpl implements GetRiwayatFetchDataEvent {
  const _$GetRiwayatFetchDataEventImpl();

  @override
  String toString() {
    return 'RiwayatTransaksiEvent.onGetRiwayat()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRiwayatFetchDataEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetRiwayat,
  }) {
    return onGetRiwayat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetRiwayat,
  }) {
    return onGetRiwayat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetRiwayat,
    required TResult orElse(),
  }) {
    if (onGetRiwayat != null) {
      return onGetRiwayat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRiwayatFetchDataEvent value) onGetRiwayat,
  }) {
    return onGetRiwayat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRiwayatFetchDataEvent value)? onGetRiwayat,
  }) {
    return onGetRiwayat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRiwayatFetchDataEvent value)? onGetRiwayat,
    required TResult orElse(),
  }) {
    if (onGetRiwayat != null) {
      return onGetRiwayat(this);
    }
    return orElse();
  }
}

abstract class GetRiwayatFetchDataEvent implements RiwayatTransaksiEvent {
  const factory GetRiwayatFetchDataEvent() = _$GetRiwayatFetchDataEventImpl;
}

/// @nodoc
mixin _$RiwayatTransaksiState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<RiwayatTransaksiResponse> transaksiList)
        loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<RiwayatTransaksiResponse> transaksiList)?
        loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<RiwayatTransaksiResponse> transaksiList)? loadedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RiwayatTransaksiInitialState value) initial,
    required TResult Function(RiwayatTransaksiLoadingState value) loading,
    required TResult Function(RiwayatTransaksiErrorState value) error,
    required TResult Function(RiwayatTransaksiLoadedState value) loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RiwayatTransaksiInitialState value)? initial,
    TResult? Function(RiwayatTransaksiLoadingState value)? loading,
    TResult? Function(RiwayatTransaksiErrorState value)? error,
    TResult? Function(RiwayatTransaksiLoadedState value)? loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RiwayatTransaksiInitialState value)? initial,
    TResult Function(RiwayatTransaksiLoadingState value)? loading,
    TResult Function(RiwayatTransaksiErrorState value)? error,
    TResult Function(RiwayatTransaksiLoadedState value)? loadedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RiwayatTransaksiStateCopyWith<$Res> {
  factory $RiwayatTransaksiStateCopyWith(RiwayatTransaksiState value,
          $Res Function(RiwayatTransaksiState) then) =
      _$RiwayatTransaksiStateCopyWithImpl<$Res, RiwayatTransaksiState>;
}

/// @nodoc
class _$RiwayatTransaksiStateCopyWithImpl<$Res,
        $Val extends RiwayatTransaksiState>
    implements $RiwayatTransaksiStateCopyWith<$Res> {
  _$RiwayatTransaksiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RiwayatTransaksiInitialStateImplCopyWith<$Res> {
  factory _$$RiwayatTransaksiInitialStateImplCopyWith(
          _$RiwayatTransaksiInitialStateImpl value,
          $Res Function(_$RiwayatTransaksiInitialStateImpl) then) =
      __$$RiwayatTransaksiInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RiwayatTransaksiInitialStateImplCopyWithImpl<$Res>
    extends _$RiwayatTransaksiStateCopyWithImpl<$Res,
        _$RiwayatTransaksiInitialStateImpl>
    implements _$$RiwayatTransaksiInitialStateImplCopyWith<$Res> {
  __$$RiwayatTransaksiInitialStateImplCopyWithImpl(
      _$RiwayatTransaksiInitialStateImpl _value,
      $Res Function(_$RiwayatTransaksiInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RiwayatTransaksiInitialStateImpl
    implements RiwayatTransaksiInitialState {
  const _$RiwayatTransaksiInitialStateImpl();

  @override
  String toString() {
    return 'RiwayatTransaksiState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RiwayatTransaksiInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<RiwayatTransaksiResponse> transaksiList)
        loadedState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<RiwayatTransaksiResponse> transaksiList)?
        loadedState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<RiwayatTransaksiResponse> transaksiList)? loadedState,
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
    required TResult Function(RiwayatTransaksiInitialState value) initial,
    required TResult Function(RiwayatTransaksiLoadingState value) loading,
    required TResult Function(RiwayatTransaksiErrorState value) error,
    required TResult Function(RiwayatTransaksiLoadedState value) loadedState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RiwayatTransaksiInitialState value)? initial,
    TResult? Function(RiwayatTransaksiLoadingState value)? loading,
    TResult? Function(RiwayatTransaksiErrorState value)? error,
    TResult? Function(RiwayatTransaksiLoadedState value)? loadedState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RiwayatTransaksiInitialState value)? initial,
    TResult Function(RiwayatTransaksiLoadingState value)? loading,
    TResult Function(RiwayatTransaksiErrorState value)? error,
    TResult Function(RiwayatTransaksiLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RiwayatTransaksiInitialState implements RiwayatTransaksiState {
  const factory RiwayatTransaksiInitialState() =
      _$RiwayatTransaksiInitialStateImpl;
}

/// @nodoc
abstract class _$$RiwayatTransaksiLoadingStateImplCopyWith<$Res> {
  factory _$$RiwayatTransaksiLoadingStateImplCopyWith(
          _$RiwayatTransaksiLoadingStateImpl value,
          $Res Function(_$RiwayatTransaksiLoadingStateImpl) then) =
      __$$RiwayatTransaksiLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RiwayatTransaksiLoadingStateImplCopyWithImpl<$Res>
    extends _$RiwayatTransaksiStateCopyWithImpl<$Res,
        _$RiwayatTransaksiLoadingStateImpl>
    implements _$$RiwayatTransaksiLoadingStateImplCopyWith<$Res> {
  __$$RiwayatTransaksiLoadingStateImplCopyWithImpl(
      _$RiwayatTransaksiLoadingStateImpl _value,
      $Res Function(_$RiwayatTransaksiLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RiwayatTransaksiLoadingStateImpl
    implements RiwayatTransaksiLoadingState {
  const _$RiwayatTransaksiLoadingStateImpl();

  @override
  String toString() {
    return 'RiwayatTransaksiState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RiwayatTransaksiLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<RiwayatTransaksiResponse> transaksiList)
        loadedState,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<RiwayatTransaksiResponse> transaksiList)?
        loadedState,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<RiwayatTransaksiResponse> transaksiList)? loadedState,
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
    required TResult Function(RiwayatTransaksiInitialState value) initial,
    required TResult Function(RiwayatTransaksiLoadingState value) loading,
    required TResult Function(RiwayatTransaksiErrorState value) error,
    required TResult Function(RiwayatTransaksiLoadedState value) loadedState,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RiwayatTransaksiInitialState value)? initial,
    TResult? Function(RiwayatTransaksiLoadingState value)? loading,
    TResult? Function(RiwayatTransaksiErrorState value)? error,
    TResult? Function(RiwayatTransaksiLoadedState value)? loadedState,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RiwayatTransaksiInitialState value)? initial,
    TResult Function(RiwayatTransaksiLoadingState value)? loading,
    TResult Function(RiwayatTransaksiErrorState value)? error,
    TResult Function(RiwayatTransaksiLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RiwayatTransaksiLoadingState implements RiwayatTransaksiState {
  const factory RiwayatTransaksiLoadingState() =
      _$RiwayatTransaksiLoadingStateImpl;
}

/// @nodoc
abstract class _$$RiwayatTransaksiErrorStateImplCopyWith<$Res> {
  factory _$$RiwayatTransaksiErrorStateImplCopyWith(
          _$RiwayatTransaksiErrorStateImpl value,
          $Res Function(_$RiwayatTransaksiErrorStateImpl) then) =
      __$$RiwayatTransaksiErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RiwayatTransaksiErrorStateImplCopyWithImpl<$Res>
    extends _$RiwayatTransaksiStateCopyWithImpl<$Res,
        _$RiwayatTransaksiErrorStateImpl>
    implements _$$RiwayatTransaksiErrorStateImplCopyWith<$Res> {
  __$$RiwayatTransaksiErrorStateImplCopyWithImpl(
      _$RiwayatTransaksiErrorStateImpl _value,
      $Res Function(_$RiwayatTransaksiErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RiwayatTransaksiErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RiwayatTransaksiErrorStateImpl implements RiwayatTransaksiErrorState {
  const _$RiwayatTransaksiErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'RiwayatTransaksiState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RiwayatTransaksiErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RiwayatTransaksiErrorStateImplCopyWith<_$RiwayatTransaksiErrorStateImpl>
      get copyWith => __$$RiwayatTransaksiErrorStateImplCopyWithImpl<
          _$RiwayatTransaksiErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<RiwayatTransaksiResponse> transaksiList)
        loadedState,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<RiwayatTransaksiResponse> transaksiList)?
        loadedState,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<RiwayatTransaksiResponse> transaksiList)? loadedState,
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
    required TResult Function(RiwayatTransaksiInitialState value) initial,
    required TResult Function(RiwayatTransaksiLoadingState value) loading,
    required TResult Function(RiwayatTransaksiErrorState value) error,
    required TResult Function(RiwayatTransaksiLoadedState value) loadedState,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RiwayatTransaksiInitialState value)? initial,
    TResult? Function(RiwayatTransaksiLoadingState value)? loading,
    TResult? Function(RiwayatTransaksiErrorState value)? error,
    TResult? Function(RiwayatTransaksiLoadedState value)? loadedState,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RiwayatTransaksiInitialState value)? initial,
    TResult Function(RiwayatTransaksiLoadingState value)? loading,
    TResult Function(RiwayatTransaksiErrorState value)? error,
    TResult Function(RiwayatTransaksiLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RiwayatTransaksiErrorState implements RiwayatTransaksiState {
  const factory RiwayatTransaksiErrorState(final String message) =
      _$RiwayatTransaksiErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$RiwayatTransaksiErrorStateImplCopyWith<_$RiwayatTransaksiErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RiwayatTransaksiLoadedStateImplCopyWith<$Res> {
  factory _$$RiwayatTransaksiLoadedStateImplCopyWith(
          _$RiwayatTransaksiLoadedStateImpl value,
          $Res Function(_$RiwayatTransaksiLoadedStateImpl) then) =
      __$$RiwayatTransaksiLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RiwayatTransaksiResponse> transaksiList});
}

/// @nodoc
class __$$RiwayatTransaksiLoadedStateImplCopyWithImpl<$Res>
    extends _$RiwayatTransaksiStateCopyWithImpl<$Res,
        _$RiwayatTransaksiLoadedStateImpl>
    implements _$$RiwayatTransaksiLoadedStateImplCopyWith<$Res> {
  __$$RiwayatTransaksiLoadedStateImplCopyWithImpl(
      _$RiwayatTransaksiLoadedStateImpl _value,
      $Res Function(_$RiwayatTransaksiLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaksiList = null,
  }) {
    return _then(_$RiwayatTransaksiLoadedStateImpl(
      transaksiList: null == transaksiList
          ? _value._transaksiList
          : transaksiList // ignore: cast_nullable_to_non_nullable
              as List<RiwayatTransaksiResponse>,
    ));
  }
}

/// @nodoc

class _$RiwayatTransaksiLoadedStateImpl implements RiwayatTransaksiLoadedState {
  const _$RiwayatTransaksiLoadedStateImpl(
      {required final List<RiwayatTransaksiResponse> transaksiList})
      : _transaksiList = transaksiList;

  final List<RiwayatTransaksiResponse> _transaksiList;
  @override
  List<RiwayatTransaksiResponse> get transaksiList {
    if (_transaksiList is EqualUnmodifiableListView) return _transaksiList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transaksiList);
  }

  @override
  String toString() {
    return 'RiwayatTransaksiState.loadedState(transaksiList: $transaksiList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RiwayatTransaksiLoadedStateImpl &&
            const DeepCollectionEquality()
                .equals(other._transaksiList, _transaksiList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_transaksiList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RiwayatTransaksiLoadedStateImplCopyWith<_$RiwayatTransaksiLoadedStateImpl>
      get copyWith => __$$RiwayatTransaksiLoadedStateImplCopyWithImpl<
          _$RiwayatTransaksiLoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<RiwayatTransaksiResponse> transaksiList)
        loadedState,
  }) {
    return loadedState(transaksiList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<RiwayatTransaksiResponse> transaksiList)?
        loadedState,
  }) {
    return loadedState?.call(transaksiList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<RiwayatTransaksiResponse> transaksiList)? loadedState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(transaksiList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RiwayatTransaksiInitialState value) initial,
    required TResult Function(RiwayatTransaksiLoadingState value) loading,
    required TResult Function(RiwayatTransaksiErrorState value) error,
    required TResult Function(RiwayatTransaksiLoadedState value) loadedState,
  }) {
    return loadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RiwayatTransaksiInitialState value)? initial,
    TResult? Function(RiwayatTransaksiLoadingState value)? loading,
    TResult? Function(RiwayatTransaksiErrorState value)? error,
    TResult? Function(RiwayatTransaksiLoadedState value)? loadedState,
  }) {
    return loadedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RiwayatTransaksiInitialState value)? initial,
    TResult Function(RiwayatTransaksiLoadingState value)? loading,
    TResult Function(RiwayatTransaksiErrorState value)? error,
    TResult Function(RiwayatTransaksiLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(this);
    }
    return orElse();
  }
}

abstract class RiwayatTransaksiLoadedState implements RiwayatTransaksiState {
  const factory RiwayatTransaksiLoadedState(
          {required final List<RiwayatTransaksiResponse> transaksiList}) =
      _$RiwayatTransaksiLoadedStateImpl;

  List<RiwayatTransaksiResponse> get transaksiList;
  @JsonKey(ignore: true)
  _$$RiwayatTransaksiLoadedStateImplCopyWith<_$RiwayatTransaksiLoadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
