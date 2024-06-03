// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'karyawan_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$KaryawanProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetKaryawanFetchDataEvent value) onGetProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetKaryawanFetchDataEvent value)? onGetProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetKaryawanFetchDataEvent value)? onGetProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KaryawanProfileEventCopyWith<$Res> {
  factory $KaryawanProfileEventCopyWith(KaryawanProfileEvent value,
          $Res Function(KaryawanProfileEvent) then) =
      _$KaryawanProfileEventCopyWithImpl<$Res, KaryawanProfileEvent>;
}

/// @nodoc
class _$KaryawanProfileEventCopyWithImpl<$Res,
        $Val extends KaryawanProfileEvent>
    implements $KaryawanProfileEventCopyWith<$Res> {
  _$KaryawanProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetKaryawanFetchDataEventImplCopyWith<$Res> {
  factory _$$GetKaryawanFetchDataEventImplCopyWith(
          _$GetKaryawanFetchDataEventImpl value,
          $Res Function(_$GetKaryawanFetchDataEventImpl) then) =
      __$$GetKaryawanFetchDataEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetKaryawanFetchDataEventImplCopyWithImpl<$Res>
    extends _$KaryawanProfileEventCopyWithImpl<$Res,
        _$GetKaryawanFetchDataEventImpl>
    implements _$$GetKaryawanFetchDataEventImplCopyWith<$Res> {
  __$$GetKaryawanFetchDataEventImplCopyWithImpl(
      _$GetKaryawanFetchDataEventImpl _value,
      $Res Function(_$GetKaryawanFetchDataEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetKaryawanFetchDataEventImpl implements GetKaryawanFetchDataEvent {
  const _$GetKaryawanFetchDataEventImpl();

  @override
  String toString() {
    return 'KaryawanProfileEvent.onGetProfile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetKaryawanFetchDataEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetProfile,
  }) {
    return onGetProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetProfile,
  }) {
    return onGetProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetProfile,
    required TResult orElse(),
  }) {
    if (onGetProfile != null) {
      return onGetProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetKaryawanFetchDataEvent value) onGetProfile,
  }) {
    return onGetProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetKaryawanFetchDataEvent value)? onGetProfile,
  }) {
    return onGetProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetKaryawanFetchDataEvent value)? onGetProfile,
    required TResult orElse(),
  }) {
    if (onGetProfile != null) {
      return onGetProfile(this);
    }
    return orElse();
  }
}

abstract class GetKaryawanFetchDataEvent implements KaryawanProfileEvent {
  const factory GetKaryawanFetchDataEvent() = _$GetKaryawanFetchDataEventImpl;
}

/// @nodoc
mixin _$KaryawanProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(KaryawanModel karyawanModel) loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(KaryawanModel karyawanModel)? loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(KaryawanModel karyawanModel)? loadedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KaryawanProfileStateInitialState value) initial,
    required TResult Function(KaryawanProfileStateLoadingState value) loading,
    required TResult Function(KaryawanProfileStateErrorState value) error,
    required TResult Function(KaryawanProfileStateLoadedState value)
        loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KaryawanProfileStateInitialState value)? initial,
    TResult? Function(KaryawanProfileStateLoadingState value)? loading,
    TResult? Function(KaryawanProfileStateErrorState value)? error,
    TResult? Function(KaryawanProfileStateLoadedState value)? loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KaryawanProfileStateInitialState value)? initial,
    TResult Function(KaryawanProfileStateLoadingState value)? loading,
    TResult Function(KaryawanProfileStateErrorState value)? error,
    TResult Function(KaryawanProfileStateLoadedState value)? loadedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KaryawanProfileStateCopyWith<$Res> {
  factory $KaryawanProfileStateCopyWith(KaryawanProfileState value,
          $Res Function(KaryawanProfileState) then) =
      _$KaryawanProfileStateCopyWithImpl<$Res, KaryawanProfileState>;
}

/// @nodoc
class _$KaryawanProfileStateCopyWithImpl<$Res,
        $Val extends KaryawanProfileState>
    implements $KaryawanProfileStateCopyWith<$Res> {
  _$KaryawanProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$KaryawanProfileStateInitialStateImplCopyWith<$Res> {
  factory _$$KaryawanProfileStateInitialStateImplCopyWith(
          _$KaryawanProfileStateInitialStateImpl value,
          $Res Function(_$KaryawanProfileStateInitialStateImpl) then) =
      __$$KaryawanProfileStateInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$KaryawanProfileStateInitialStateImplCopyWithImpl<$Res>
    extends _$KaryawanProfileStateCopyWithImpl<$Res,
        _$KaryawanProfileStateInitialStateImpl>
    implements _$$KaryawanProfileStateInitialStateImplCopyWith<$Res> {
  __$$KaryawanProfileStateInitialStateImplCopyWithImpl(
      _$KaryawanProfileStateInitialStateImpl _value,
      $Res Function(_$KaryawanProfileStateInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$KaryawanProfileStateInitialStateImpl
    implements KaryawanProfileStateInitialState {
  const _$KaryawanProfileStateInitialStateImpl();

  @override
  String toString() {
    return 'KaryawanProfileState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KaryawanProfileStateInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(KaryawanModel karyawanModel) loadedState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(KaryawanModel karyawanModel)? loadedState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(KaryawanModel karyawanModel)? loadedState,
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
    required TResult Function(KaryawanProfileStateInitialState value) initial,
    required TResult Function(KaryawanProfileStateLoadingState value) loading,
    required TResult Function(KaryawanProfileStateErrorState value) error,
    required TResult Function(KaryawanProfileStateLoadedState value)
        loadedState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KaryawanProfileStateInitialState value)? initial,
    TResult? Function(KaryawanProfileStateLoadingState value)? loading,
    TResult? Function(KaryawanProfileStateErrorState value)? error,
    TResult? Function(KaryawanProfileStateLoadedState value)? loadedState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KaryawanProfileStateInitialState value)? initial,
    TResult Function(KaryawanProfileStateLoadingState value)? loading,
    TResult Function(KaryawanProfileStateErrorState value)? error,
    TResult Function(KaryawanProfileStateLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class KaryawanProfileStateInitialState
    implements KaryawanProfileState {
  const factory KaryawanProfileStateInitialState() =
      _$KaryawanProfileStateInitialStateImpl;
}

/// @nodoc
abstract class _$$KaryawanProfileStateLoadingStateImplCopyWith<$Res> {
  factory _$$KaryawanProfileStateLoadingStateImplCopyWith(
          _$KaryawanProfileStateLoadingStateImpl value,
          $Res Function(_$KaryawanProfileStateLoadingStateImpl) then) =
      __$$KaryawanProfileStateLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$KaryawanProfileStateLoadingStateImplCopyWithImpl<$Res>
    extends _$KaryawanProfileStateCopyWithImpl<$Res,
        _$KaryawanProfileStateLoadingStateImpl>
    implements _$$KaryawanProfileStateLoadingStateImplCopyWith<$Res> {
  __$$KaryawanProfileStateLoadingStateImplCopyWithImpl(
      _$KaryawanProfileStateLoadingStateImpl _value,
      $Res Function(_$KaryawanProfileStateLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$KaryawanProfileStateLoadingStateImpl
    implements KaryawanProfileStateLoadingState {
  const _$KaryawanProfileStateLoadingStateImpl();

  @override
  String toString() {
    return 'KaryawanProfileState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KaryawanProfileStateLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(KaryawanModel karyawanModel) loadedState,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(KaryawanModel karyawanModel)? loadedState,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(KaryawanModel karyawanModel)? loadedState,
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
    required TResult Function(KaryawanProfileStateInitialState value) initial,
    required TResult Function(KaryawanProfileStateLoadingState value) loading,
    required TResult Function(KaryawanProfileStateErrorState value) error,
    required TResult Function(KaryawanProfileStateLoadedState value)
        loadedState,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KaryawanProfileStateInitialState value)? initial,
    TResult? Function(KaryawanProfileStateLoadingState value)? loading,
    TResult? Function(KaryawanProfileStateErrorState value)? error,
    TResult? Function(KaryawanProfileStateLoadedState value)? loadedState,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KaryawanProfileStateInitialState value)? initial,
    TResult Function(KaryawanProfileStateLoadingState value)? loading,
    TResult Function(KaryawanProfileStateErrorState value)? error,
    TResult Function(KaryawanProfileStateLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class KaryawanProfileStateLoadingState
    implements KaryawanProfileState {
  const factory KaryawanProfileStateLoadingState() =
      _$KaryawanProfileStateLoadingStateImpl;
}

/// @nodoc
abstract class _$$KaryawanProfileStateErrorStateImplCopyWith<$Res> {
  factory _$$KaryawanProfileStateErrorStateImplCopyWith(
          _$KaryawanProfileStateErrorStateImpl value,
          $Res Function(_$KaryawanProfileStateErrorStateImpl) then) =
      __$$KaryawanProfileStateErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$KaryawanProfileStateErrorStateImplCopyWithImpl<$Res>
    extends _$KaryawanProfileStateCopyWithImpl<$Res,
        _$KaryawanProfileStateErrorStateImpl>
    implements _$$KaryawanProfileStateErrorStateImplCopyWith<$Res> {
  __$$KaryawanProfileStateErrorStateImplCopyWithImpl(
      _$KaryawanProfileStateErrorStateImpl _value,
      $Res Function(_$KaryawanProfileStateErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$KaryawanProfileStateErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$KaryawanProfileStateErrorStateImpl
    implements KaryawanProfileStateErrorState {
  const _$KaryawanProfileStateErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'KaryawanProfileState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KaryawanProfileStateErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KaryawanProfileStateErrorStateImplCopyWith<
          _$KaryawanProfileStateErrorStateImpl>
      get copyWith => __$$KaryawanProfileStateErrorStateImplCopyWithImpl<
          _$KaryawanProfileStateErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(KaryawanModel karyawanModel) loadedState,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(KaryawanModel karyawanModel)? loadedState,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(KaryawanModel karyawanModel)? loadedState,
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
    required TResult Function(KaryawanProfileStateInitialState value) initial,
    required TResult Function(KaryawanProfileStateLoadingState value) loading,
    required TResult Function(KaryawanProfileStateErrorState value) error,
    required TResult Function(KaryawanProfileStateLoadedState value)
        loadedState,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KaryawanProfileStateInitialState value)? initial,
    TResult? Function(KaryawanProfileStateLoadingState value)? loading,
    TResult? Function(KaryawanProfileStateErrorState value)? error,
    TResult? Function(KaryawanProfileStateLoadedState value)? loadedState,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KaryawanProfileStateInitialState value)? initial,
    TResult Function(KaryawanProfileStateLoadingState value)? loading,
    TResult Function(KaryawanProfileStateErrorState value)? error,
    TResult Function(KaryawanProfileStateLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class KaryawanProfileStateErrorState implements KaryawanProfileState {
  const factory KaryawanProfileStateErrorState(final String message) =
      _$KaryawanProfileStateErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$KaryawanProfileStateErrorStateImplCopyWith<
          _$KaryawanProfileStateErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$KaryawanProfileStateLoadedStateImplCopyWith<$Res> {
  factory _$$KaryawanProfileStateLoadedStateImplCopyWith(
          _$KaryawanProfileStateLoadedStateImpl value,
          $Res Function(_$KaryawanProfileStateLoadedStateImpl) then) =
      __$$KaryawanProfileStateLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({KaryawanModel karyawanModel});
}

/// @nodoc
class __$$KaryawanProfileStateLoadedStateImplCopyWithImpl<$Res>
    extends _$KaryawanProfileStateCopyWithImpl<$Res,
        _$KaryawanProfileStateLoadedStateImpl>
    implements _$$KaryawanProfileStateLoadedStateImplCopyWith<$Res> {
  __$$KaryawanProfileStateLoadedStateImplCopyWithImpl(
      _$KaryawanProfileStateLoadedStateImpl _value,
      $Res Function(_$KaryawanProfileStateLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? karyawanModel = null,
  }) {
    return _then(_$KaryawanProfileStateLoadedStateImpl(
      karyawanModel: null == karyawanModel
          ? _value.karyawanModel
          : karyawanModel // ignore: cast_nullable_to_non_nullable
              as KaryawanModel,
    ));
  }
}

/// @nodoc

class _$KaryawanProfileStateLoadedStateImpl
    implements KaryawanProfileStateLoadedState {
  const _$KaryawanProfileStateLoadedStateImpl({required this.karyawanModel});

  @override
  final KaryawanModel karyawanModel;

  @override
  String toString() {
    return 'KaryawanProfileState.loadedState(karyawanModel: $karyawanModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KaryawanProfileStateLoadedStateImpl &&
            (identical(other.karyawanModel, karyawanModel) ||
                other.karyawanModel == karyawanModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, karyawanModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KaryawanProfileStateLoadedStateImplCopyWith<
          _$KaryawanProfileStateLoadedStateImpl>
      get copyWith => __$$KaryawanProfileStateLoadedStateImplCopyWithImpl<
          _$KaryawanProfileStateLoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(KaryawanModel karyawanModel) loadedState,
  }) {
    return loadedState(karyawanModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(KaryawanModel karyawanModel)? loadedState,
  }) {
    return loadedState?.call(karyawanModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(KaryawanModel karyawanModel)? loadedState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(karyawanModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KaryawanProfileStateInitialState value) initial,
    required TResult Function(KaryawanProfileStateLoadingState value) loading,
    required TResult Function(KaryawanProfileStateErrorState value) error,
    required TResult Function(KaryawanProfileStateLoadedState value)
        loadedState,
  }) {
    return loadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KaryawanProfileStateInitialState value)? initial,
    TResult? Function(KaryawanProfileStateLoadingState value)? loading,
    TResult? Function(KaryawanProfileStateErrorState value)? error,
    TResult? Function(KaryawanProfileStateLoadedState value)? loadedState,
  }) {
    return loadedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KaryawanProfileStateInitialState value)? initial,
    TResult Function(KaryawanProfileStateLoadingState value)? loading,
    TResult Function(KaryawanProfileStateErrorState value)? error,
    TResult Function(KaryawanProfileStateLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(this);
    }
    return orElse();
  }
}

abstract class KaryawanProfileStateLoadedState implements KaryawanProfileState {
  const factory KaryawanProfileStateLoadedState(
          {required final KaryawanModel karyawanModel}) =
      _$KaryawanProfileStateLoadedStateImpl;

  KaryawanModel get karyawanModel;
  @JsonKey(ignore: true)
  _$$KaryawanProfileStateLoadedStateImplCopyWith<
          _$KaryawanProfileStateLoadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
