// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pesanan_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PesananEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetPesanan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetPesanan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetPesanan,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPesananFetchDataEvent value) onGetPesanan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPesananFetchDataEvent value)? onGetPesanan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPesananFetchDataEvent value)? onGetPesanan,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PesananEventCopyWith<$Res> {
  factory $PesananEventCopyWith(
          PesananEvent value, $Res Function(PesananEvent) then) =
      _$PesananEventCopyWithImpl<$Res, PesananEvent>;
}

/// @nodoc
class _$PesananEventCopyWithImpl<$Res, $Val extends PesananEvent>
    implements $PesananEventCopyWith<$Res> {
  _$PesananEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPesananFetchDataEventImplCopyWith<$Res> {
  factory _$$GetPesananFetchDataEventImplCopyWith(
          _$GetPesananFetchDataEventImpl value,
          $Res Function(_$GetPesananFetchDataEventImpl) then) =
      __$$GetPesananFetchDataEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPesananFetchDataEventImplCopyWithImpl<$Res>
    extends _$PesananEventCopyWithImpl<$Res, _$GetPesananFetchDataEventImpl>
    implements _$$GetPesananFetchDataEventImplCopyWith<$Res> {
  __$$GetPesananFetchDataEventImplCopyWithImpl(
      _$GetPesananFetchDataEventImpl _value,
      $Res Function(_$GetPesananFetchDataEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPesananFetchDataEventImpl implements GetPesananFetchDataEvent {
  const _$GetPesananFetchDataEventImpl();

  @override
  String toString() {
    return 'PesananEvent.onGetPesanan()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPesananFetchDataEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetPesanan,
  }) {
    return onGetPesanan();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetPesanan,
  }) {
    return onGetPesanan?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetPesanan,
    required TResult orElse(),
  }) {
    if (onGetPesanan != null) {
      return onGetPesanan();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPesananFetchDataEvent value) onGetPesanan,
  }) {
    return onGetPesanan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPesananFetchDataEvent value)? onGetPesanan,
  }) {
    return onGetPesanan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPesananFetchDataEvent value)? onGetPesanan,
    required TResult orElse(),
  }) {
    if (onGetPesanan != null) {
      return onGetPesanan(this);
    }
    return orElse();
  }
}

abstract class GetPesananFetchDataEvent implements PesananEvent {
  const factory GetPesananFetchDataEvent() = _$GetPesananFetchDataEventImpl;
}

/// @nodoc
mixin _$PesananState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<PesananResponseModel> pesananList)
        loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<PesananResponseModel> pesananList)? loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<PesananResponseModel> pesananList)? loadedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PesananInitialState value) initial,
    required TResult Function(PesananLoadingState value) loading,
    required TResult Function(PesananErrorState value) error,
    required TResult Function(PesananLoadedState value) loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PesananInitialState value)? initial,
    TResult? Function(PesananLoadingState value)? loading,
    TResult? Function(PesananErrorState value)? error,
    TResult? Function(PesananLoadedState value)? loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PesananInitialState value)? initial,
    TResult Function(PesananLoadingState value)? loading,
    TResult Function(PesananErrorState value)? error,
    TResult Function(PesananLoadedState value)? loadedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PesananStateCopyWith<$Res> {
  factory $PesananStateCopyWith(
          PesananState value, $Res Function(PesananState) then) =
      _$PesananStateCopyWithImpl<$Res, PesananState>;
}

/// @nodoc
class _$PesananStateCopyWithImpl<$Res, $Val extends PesananState>
    implements $PesananStateCopyWith<$Res> {
  _$PesananStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PesananInitialStateImplCopyWith<$Res> {
  factory _$$PesananInitialStateImplCopyWith(_$PesananInitialStateImpl value,
          $Res Function(_$PesananInitialStateImpl) then) =
      __$$PesananInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PesananInitialStateImplCopyWithImpl<$Res>
    extends _$PesananStateCopyWithImpl<$Res, _$PesananInitialStateImpl>
    implements _$$PesananInitialStateImplCopyWith<$Res> {
  __$$PesananInitialStateImplCopyWithImpl(_$PesananInitialStateImpl _value,
      $Res Function(_$PesananInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PesananInitialStateImpl implements PesananInitialState {
  const _$PesananInitialStateImpl();

  @override
  String toString() {
    return 'PesananState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PesananInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<PesananResponseModel> pesananList)
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
    TResult? Function(List<PesananResponseModel> pesananList)? loadedState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<PesananResponseModel> pesananList)? loadedState,
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
    required TResult Function(PesananInitialState value) initial,
    required TResult Function(PesananLoadingState value) loading,
    required TResult Function(PesananErrorState value) error,
    required TResult Function(PesananLoadedState value) loadedState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PesananInitialState value)? initial,
    TResult? Function(PesananLoadingState value)? loading,
    TResult? Function(PesananErrorState value)? error,
    TResult? Function(PesananLoadedState value)? loadedState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PesananInitialState value)? initial,
    TResult Function(PesananLoadingState value)? loading,
    TResult Function(PesananErrorState value)? error,
    TResult Function(PesananLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PesananInitialState implements PesananState {
  const factory PesananInitialState() = _$PesananInitialStateImpl;
}

/// @nodoc
abstract class _$$PesananLoadingStateImplCopyWith<$Res> {
  factory _$$PesananLoadingStateImplCopyWith(_$PesananLoadingStateImpl value,
          $Res Function(_$PesananLoadingStateImpl) then) =
      __$$PesananLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PesananLoadingStateImplCopyWithImpl<$Res>
    extends _$PesananStateCopyWithImpl<$Res, _$PesananLoadingStateImpl>
    implements _$$PesananLoadingStateImplCopyWith<$Res> {
  __$$PesananLoadingStateImplCopyWithImpl(_$PesananLoadingStateImpl _value,
      $Res Function(_$PesananLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PesananLoadingStateImpl implements PesananLoadingState {
  const _$PesananLoadingStateImpl();

  @override
  String toString() {
    return 'PesananState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PesananLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<PesananResponseModel> pesananList)
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
    TResult? Function(List<PesananResponseModel> pesananList)? loadedState,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<PesananResponseModel> pesananList)? loadedState,
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
    required TResult Function(PesananInitialState value) initial,
    required TResult Function(PesananLoadingState value) loading,
    required TResult Function(PesananErrorState value) error,
    required TResult Function(PesananLoadedState value) loadedState,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PesananInitialState value)? initial,
    TResult? Function(PesananLoadingState value)? loading,
    TResult? Function(PesananErrorState value)? error,
    TResult? Function(PesananLoadedState value)? loadedState,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PesananInitialState value)? initial,
    TResult Function(PesananLoadingState value)? loading,
    TResult Function(PesananErrorState value)? error,
    TResult Function(PesananLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PesananLoadingState implements PesananState {
  const factory PesananLoadingState() = _$PesananLoadingStateImpl;
}

/// @nodoc
abstract class _$$PesananErrorStateImplCopyWith<$Res> {
  factory _$$PesananErrorStateImplCopyWith(_$PesananErrorStateImpl value,
          $Res Function(_$PesananErrorStateImpl) then) =
      __$$PesananErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PesananErrorStateImplCopyWithImpl<$Res>
    extends _$PesananStateCopyWithImpl<$Res, _$PesananErrorStateImpl>
    implements _$$PesananErrorStateImplCopyWith<$Res> {
  __$$PesananErrorStateImplCopyWithImpl(_$PesananErrorStateImpl _value,
      $Res Function(_$PesananErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$PesananErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PesananErrorStateImpl implements PesananErrorState {
  const _$PesananErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PesananState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PesananErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PesananErrorStateImplCopyWith<_$PesananErrorStateImpl> get copyWith =>
      __$$PesananErrorStateImplCopyWithImpl<_$PesananErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<PesananResponseModel> pesananList)
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
    TResult? Function(List<PesananResponseModel> pesananList)? loadedState,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<PesananResponseModel> pesananList)? loadedState,
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
    required TResult Function(PesananInitialState value) initial,
    required TResult Function(PesananLoadingState value) loading,
    required TResult Function(PesananErrorState value) error,
    required TResult Function(PesananLoadedState value) loadedState,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PesananInitialState value)? initial,
    TResult? Function(PesananLoadingState value)? loading,
    TResult? Function(PesananErrorState value)? error,
    TResult? Function(PesananLoadedState value)? loadedState,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PesananInitialState value)? initial,
    TResult Function(PesananLoadingState value)? loading,
    TResult Function(PesananErrorState value)? error,
    TResult Function(PesananLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PesananErrorState implements PesananState {
  const factory PesananErrorState(final String message) =
      _$PesananErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$PesananErrorStateImplCopyWith<_$PesananErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PesananLoadedStateImplCopyWith<$Res> {
  factory _$$PesananLoadedStateImplCopyWith(_$PesananLoadedStateImpl value,
          $Res Function(_$PesananLoadedStateImpl) then) =
      __$$PesananLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PesananResponseModel> pesananList});
}

/// @nodoc
class __$$PesananLoadedStateImplCopyWithImpl<$Res>
    extends _$PesananStateCopyWithImpl<$Res, _$PesananLoadedStateImpl>
    implements _$$PesananLoadedStateImplCopyWith<$Res> {
  __$$PesananLoadedStateImplCopyWithImpl(_$PesananLoadedStateImpl _value,
      $Res Function(_$PesananLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pesananList = null,
  }) {
    return _then(_$PesananLoadedStateImpl(
      pesananList: null == pesananList
          ? _value._pesananList
          : pesananList // ignore: cast_nullable_to_non_nullable
              as List<PesananResponseModel>,
    ));
  }
}

/// @nodoc

class _$PesananLoadedStateImpl implements PesananLoadedState {
  const _$PesananLoadedStateImpl(
      {required final List<PesananResponseModel> pesananList})
      : _pesananList = pesananList;

  final List<PesananResponseModel> _pesananList;
  @override
  List<PesananResponseModel> get pesananList {
    if (_pesananList is EqualUnmodifiableListView) return _pesananList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pesananList);
  }

  @override
  String toString() {
    return 'PesananState.loadedState(pesananList: $pesananList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PesananLoadedStateImpl &&
            const DeepCollectionEquality()
                .equals(other._pesananList, _pesananList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_pesananList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PesananLoadedStateImplCopyWith<_$PesananLoadedStateImpl> get copyWith =>
      __$$PesananLoadedStateImplCopyWithImpl<_$PesananLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<PesananResponseModel> pesananList)
        loadedState,
  }) {
    return loadedState(pesananList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<PesananResponseModel> pesananList)? loadedState,
  }) {
    return loadedState?.call(pesananList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<PesananResponseModel> pesananList)? loadedState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(pesananList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PesananInitialState value) initial,
    required TResult Function(PesananLoadingState value) loading,
    required TResult Function(PesananErrorState value) error,
    required TResult Function(PesananLoadedState value) loadedState,
  }) {
    return loadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PesananInitialState value)? initial,
    TResult? Function(PesananLoadingState value)? loading,
    TResult? Function(PesananErrorState value)? error,
    TResult? Function(PesananLoadedState value)? loadedState,
  }) {
    return loadedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PesananInitialState value)? initial,
    TResult Function(PesananLoadingState value)? loading,
    TResult Function(PesananErrorState value)? error,
    TResult Function(PesananLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(this);
    }
    return orElse();
  }
}

abstract class PesananLoadedState implements PesananState {
  const factory PesananLoadedState(
          {required final List<PesananResponseModel> pesananList}) =
      _$PesananLoadedStateImpl;

  List<PesananResponseModel> get pesananList;
  @JsonKey(ignore: true)
  _$$PesananLoadedStateImplCopyWith<_$PesananLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
