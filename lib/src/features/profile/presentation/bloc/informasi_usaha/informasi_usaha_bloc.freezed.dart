// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'informasi_usaha_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InformasiUsahaEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetInformasi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetInformasi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetInformasi,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInformasiFetchDataEvent value) onGetInformasi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInformasiFetchDataEvent value)? onGetInformasi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInformasiFetchDataEvent value)? onGetInformasi,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InformasiUsahaEventCopyWith<$Res> {
  factory $InformasiUsahaEventCopyWith(
          InformasiUsahaEvent value, $Res Function(InformasiUsahaEvent) then) =
      _$InformasiUsahaEventCopyWithImpl<$Res, InformasiUsahaEvent>;
}

/// @nodoc
class _$InformasiUsahaEventCopyWithImpl<$Res, $Val extends InformasiUsahaEvent>
    implements $InformasiUsahaEventCopyWith<$Res> {
  _$InformasiUsahaEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetInformasiFetchDataEventImplCopyWith<$Res> {
  factory _$$GetInformasiFetchDataEventImplCopyWith(
          _$GetInformasiFetchDataEventImpl value,
          $Res Function(_$GetInformasiFetchDataEventImpl) then) =
      __$$GetInformasiFetchDataEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetInformasiFetchDataEventImplCopyWithImpl<$Res>
    extends _$InformasiUsahaEventCopyWithImpl<$Res,
        _$GetInformasiFetchDataEventImpl>
    implements _$$GetInformasiFetchDataEventImplCopyWith<$Res> {
  __$$GetInformasiFetchDataEventImplCopyWithImpl(
      _$GetInformasiFetchDataEventImpl _value,
      $Res Function(_$GetInformasiFetchDataEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetInformasiFetchDataEventImpl implements GetInformasiFetchDataEvent {
  const _$GetInformasiFetchDataEventImpl();

  @override
  String toString() {
    return 'InformasiUsahaEvent.onGetInformasi()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInformasiFetchDataEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetInformasi,
  }) {
    return onGetInformasi();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetInformasi,
  }) {
    return onGetInformasi?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetInformasi,
    required TResult orElse(),
  }) {
    if (onGetInformasi != null) {
      return onGetInformasi();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInformasiFetchDataEvent value) onGetInformasi,
  }) {
    return onGetInformasi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInformasiFetchDataEvent value)? onGetInformasi,
  }) {
    return onGetInformasi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInformasiFetchDataEvent value)? onGetInformasi,
    required TResult orElse(),
  }) {
    if (onGetInformasi != null) {
      return onGetInformasi(this);
    }
    return orElse();
  }
}

abstract class GetInformasiFetchDataEvent implements InformasiUsahaEvent {
  const factory GetInformasiFetchDataEvent() = _$GetInformasiFetchDataEventImpl;
}

/// @nodoc
mixin _$InformasiUsahaState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(UsahaResponseModel responseModel) loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(UsahaResponseModel responseModel)? loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(UsahaResponseModel responseModel)? loadedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InformasiUsahatateInitialState value) initial,
    required TResult Function(InformasiUsahaStateLoadingState value) loading,
    required TResult Function(InformasiUsahaStateErrorState value) error,
    required TResult Function(InformasiUsahaStateLoadedState value) loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InformasiUsahatateInitialState value)? initial,
    TResult? Function(InformasiUsahaStateLoadingState value)? loading,
    TResult? Function(InformasiUsahaStateErrorState value)? error,
    TResult? Function(InformasiUsahaStateLoadedState value)? loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InformasiUsahatateInitialState value)? initial,
    TResult Function(InformasiUsahaStateLoadingState value)? loading,
    TResult Function(InformasiUsahaStateErrorState value)? error,
    TResult Function(InformasiUsahaStateLoadedState value)? loadedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InformasiUsahaStateCopyWith<$Res> {
  factory $InformasiUsahaStateCopyWith(
          InformasiUsahaState value, $Res Function(InformasiUsahaState) then) =
      _$InformasiUsahaStateCopyWithImpl<$Res, InformasiUsahaState>;
}

/// @nodoc
class _$InformasiUsahaStateCopyWithImpl<$Res, $Val extends InformasiUsahaState>
    implements $InformasiUsahaStateCopyWith<$Res> {
  _$InformasiUsahaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InformasiUsahatateInitialStateImplCopyWith<$Res> {
  factory _$$InformasiUsahatateInitialStateImplCopyWith(
          _$InformasiUsahatateInitialStateImpl value,
          $Res Function(_$InformasiUsahatateInitialStateImpl) then) =
      __$$InformasiUsahatateInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InformasiUsahatateInitialStateImplCopyWithImpl<$Res>
    extends _$InformasiUsahaStateCopyWithImpl<$Res,
        _$InformasiUsahatateInitialStateImpl>
    implements _$$InformasiUsahatateInitialStateImplCopyWith<$Res> {
  __$$InformasiUsahatateInitialStateImplCopyWithImpl(
      _$InformasiUsahatateInitialStateImpl _value,
      $Res Function(_$InformasiUsahatateInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InformasiUsahatateInitialStateImpl
    implements InformasiUsahatateInitialState {
  const _$InformasiUsahatateInitialStateImpl();

  @override
  String toString() {
    return 'InformasiUsahaState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InformasiUsahatateInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(UsahaResponseModel responseModel) loadedState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(UsahaResponseModel responseModel)? loadedState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(UsahaResponseModel responseModel)? loadedState,
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
    required TResult Function(InformasiUsahatateInitialState value) initial,
    required TResult Function(InformasiUsahaStateLoadingState value) loading,
    required TResult Function(InformasiUsahaStateErrorState value) error,
    required TResult Function(InformasiUsahaStateLoadedState value) loadedState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InformasiUsahatateInitialState value)? initial,
    TResult? Function(InformasiUsahaStateLoadingState value)? loading,
    TResult? Function(InformasiUsahaStateErrorState value)? error,
    TResult? Function(InformasiUsahaStateLoadedState value)? loadedState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InformasiUsahatateInitialState value)? initial,
    TResult Function(InformasiUsahaStateLoadingState value)? loading,
    TResult Function(InformasiUsahaStateErrorState value)? error,
    TResult Function(InformasiUsahaStateLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InformasiUsahatateInitialState implements InformasiUsahaState {
  const factory InformasiUsahatateInitialState() =
      _$InformasiUsahatateInitialStateImpl;
}

/// @nodoc
abstract class _$$InformasiUsahaStateLoadingStateImplCopyWith<$Res> {
  factory _$$InformasiUsahaStateLoadingStateImplCopyWith(
          _$InformasiUsahaStateLoadingStateImpl value,
          $Res Function(_$InformasiUsahaStateLoadingStateImpl) then) =
      __$$InformasiUsahaStateLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InformasiUsahaStateLoadingStateImplCopyWithImpl<$Res>
    extends _$InformasiUsahaStateCopyWithImpl<$Res,
        _$InformasiUsahaStateLoadingStateImpl>
    implements _$$InformasiUsahaStateLoadingStateImplCopyWith<$Res> {
  __$$InformasiUsahaStateLoadingStateImplCopyWithImpl(
      _$InformasiUsahaStateLoadingStateImpl _value,
      $Res Function(_$InformasiUsahaStateLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InformasiUsahaStateLoadingStateImpl
    implements InformasiUsahaStateLoadingState {
  const _$InformasiUsahaStateLoadingStateImpl();

  @override
  String toString() {
    return 'InformasiUsahaState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InformasiUsahaStateLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(UsahaResponseModel responseModel) loadedState,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(UsahaResponseModel responseModel)? loadedState,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(UsahaResponseModel responseModel)? loadedState,
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
    required TResult Function(InformasiUsahatateInitialState value) initial,
    required TResult Function(InformasiUsahaStateLoadingState value) loading,
    required TResult Function(InformasiUsahaStateErrorState value) error,
    required TResult Function(InformasiUsahaStateLoadedState value) loadedState,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InformasiUsahatateInitialState value)? initial,
    TResult? Function(InformasiUsahaStateLoadingState value)? loading,
    TResult? Function(InformasiUsahaStateErrorState value)? error,
    TResult? Function(InformasiUsahaStateLoadedState value)? loadedState,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InformasiUsahatateInitialState value)? initial,
    TResult Function(InformasiUsahaStateLoadingState value)? loading,
    TResult Function(InformasiUsahaStateErrorState value)? error,
    TResult Function(InformasiUsahaStateLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class InformasiUsahaStateLoadingState implements InformasiUsahaState {
  const factory InformasiUsahaStateLoadingState() =
      _$InformasiUsahaStateLoadingStateImpl;
}

/// @nodoc
abstract class _$$InformasiUsahaStateErrorStateImplCopyWith<$Res> {
  factory _$$InformasiUsahaStateErrorStateImplCopyWith(
          _$InformasiUsahaStateErrorStateImpl value,
          $Res Function(_$InformasiUsahaStateErrorStateImpl) then) =
      __$$InformasiUsahaStateErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$InformasiUsahaStateErrorStateImplCopyWithImpl<$Res>
    extends _$InformasiUsahaStateCopyWithImpl<$Res,
        _$InformasiUsahaStateErrorStateImpl>
    implements _$$InformasiUsahaStateErrorStateImplCopyWith<$Res> {
  __$$InformasiUsahaStateErrorStateImplCopyWithImpl(
      _$InformasiUsahaStateErrorStateImpl _value,
      $Res Function(_$InformasiUsahaStateErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$InformasiUsahaStateErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InformasiUsahaStateErrorStateImpl
    implements InformasiUsahaStateErrorState {
  const _$InformasiUsahaStateErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'InformasiUsahaState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InformasiUsahaStateErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InformasiUsahaStateErrorStateImplCopyWith<
          _$InformasiUsahaStateErrorStateImpl>
      get copyWith => __$$InformasiUsahaStateErrorStateImplCopyWithImpl<
          _$InformasiUsahaStateErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(UsahaResponseModel responseModel) loadedState,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(UsahaResponseModel responseModel)? loadedState,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(UsahaResponseModel responseModel)? loadedState,
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
    required TResult Function(InformasiUsahatateInitialState value) initial,
    required TResult Function(InformasiUsahaStateLoadingState value) loading,
    required TResult Function(InformasiUsahaStateErrorState value) error,
    required TResult Function(InformasiUsahaStateLoadedState value) loadedState,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InformasiUsahatateInitialState value)? initial,
    TResult? Function(InformasiUsahaStateLoadingState value)? loading,
    TResult? Function(InformasiUsahaStateErrorState value)? error,
    TResult? Function(InformasiUsahaStateLoadedState value)? loadedState,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InformasiUsahatateInitialState value)? initial,
    TResult Function(InformasiUsahaStateLoadingState value)? loading,
    TResult Function(InformasiUsahaStateErrorState value)? error,
    TResult Function(InformasiUsahaStateLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class InformasiUsahaStateErrorState implements InformasiUsahaState {
  const factory InformasiUsahaStateErrorState(final String message) =
      _$InformasiUsahaStateErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$InformasiUsahaStateErrorStateImplCopyWith<
          _$InformasiUsahaStateErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InformasiUsahaStateLoadedStateImplCopyWith<$Res> {
  factory _$$InformasiUsahaStateLoadedStateImplCopyWith(
          _$InformasiUsahaStateLoadedStateImpl value,
          $Res Function(_$InformasiUsahaStateLoadedStateImpl) then) =
      __$$InformasiUsahaStateLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UsahaResponseModel responseModel});
}

/// @nodoc
class __$$InformasiUsahaStateLoadedStateImplCopyWithImpl<$Res>
    extends _$InformasiUsahaStateCopyWithImpl<$Res,
        _$InformasiUsahaStateLoadedStateImpl>
    implements _$$InformasiUsahaStateLoadedStateImplCopyWith<$Res> {
  __$$InformasiUsahaStateLoadedStateImplCopyWithImpl(
      _$InformasiUsahaStateLoadedStateImpl _value,
      $Res Function(_$InformasiUsahaStateLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseModel = null,
  }) {
    return _then(_$InformasiUsahaStateLoadedStateImpl(
      responseModel: null == responseModel
          ? _value.responseModel
          : responseModel // ignore: cast_nullable_to_non_nullable
              as UsahaResponseModel,
    ));
  }
}

/// @nodoc

class _$InformasiUsahaStateLoadedStateImpl
    implements InformasiUsahaStateLoadedState {
  const _$InformasiUsahaStateLoadedStateImpl({required this.responseModel});

  @override
  final UsahaResponseModel responseModel;

  @override
  String toString() {
    return 'InformasiUsahaState.loadedState(responseModel: $responseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InformasiUsahaStateLoadedStateImpl &&
            (identical(other.responseModel, responseModel) ||
                other.responseModel == responseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, responseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InformasiUsahaStateLoadedStateImplCopyWith<
          _$InformasiUsahaStateLoadedStateImpl>
      get copyWith => __$$InformasiUsahaStateLoadedStateImplCopyWithImpl<
          _$InformasiUsahaStateLoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(UsahaResponseModel responseModel) loadedState,
  }) {
    return loadedState(responseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(UsahaResponseModel responseModel)? loadedState,
  }) {
    return loadedState?.call(responseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(UsahaResponseModel responseModel)? loadedState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(responseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InformasiUsahatateInitialState value) initial,
    required TResult Function(InformasiUsahaStateLoadingState value) loading,
    required TResult Function(InformasiUsahaStateErrorState value) error,
    required TResult Function(InformasiUsahaStateLoadedState value) loadedState,
  }) {
    return loadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InformasiUsahatateInitialState value)? initial,
    TResult? Function(InformasiUsahaStateLoadingState value)? loading,
    TResult? Function(InformasiUsahaStateErrorState value)? error,
    TResult? Function(InformasiUsahaStateLoadedState value)? loadedState,
  }) {
    return loadedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InformasiUsahatateInitialState value)? initial,
    TResult Function(InformasiUsahaStateLoadingState value)? loading,
    TResult Function(InformasiUsahaStateErrorState value)? error,
    TResult Function(InformasiUsahaStateLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(this);
    }
    return orElse();
  }
}

abstract class InformasiUsahaStateLoadedState implements InformasiUsahaState {
  const factory InformasiUsahaStateLoadedState(
          {required final UsahaResponseModel responseModel}) =
      _$InformasiUsahaStateLoadedStateImpl;

  UsahaResponseModel get responseModel;
  @JsonKey(ignore: true)
  _$$InformasiUsahaStateLoadedStateImplCopyWith<
          _$InformasiUsahaStateLoadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
