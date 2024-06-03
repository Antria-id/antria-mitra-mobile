// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_transaksi_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailTransaksiEvent {
  String get invoice => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String invoice) onGetDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String invoice)? onGetDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String invoice)? onGetDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailTransaksiFetchDataEvent value) onGetDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DetailTransaksiFetchDataEvent value)? onGetDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailTransaksiFetchDataEvent value)? onGetDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailTransaksiEventCopyWith<DetailTransaksiEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailTransaksiEventCopyWith<$Res> {
  factory $DetailTransaksiEventCopyWith(DetailTransaksiEvent value,
          $Res Function(DetailTransaksiEvent) then) =
      _$DetailTransaksiEventCopyWithImpl<$Res, DetailTransaksiEvent>;
  @useResult
  $Res call({String invoice});
}

/// @nodoc
class _$DetailTransaksiEventCopyWithImpl<$Res,
        $Val extends DetailTransaksiEvent>
    implements $DetailTransaksiEventCopyWith<$Res> {
  _$DetailTransaksiEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoice = null,
  }) {
    return _then(_value.copyWith(
      invoice: null == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailTransaksiFetchDataEventImplCopyWith<$Res>
    implements $DetailTransaksiEventCopyWith<$Res> {
  factory _$$DetailTransaksiFetchDataEventImplCopyWith(
          _$DetailTransaksiFetchDataEventImpl value,
          $Res Function(_$DetailTransaksiFetchDataEventImpl) then) =
      __$$DetailTransaksiFetchDataEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String invoice});
}

/// @nodoc
class __$$DetailTransaksiFetchDataEventImplCopyWithImpl<$Res>
    extends _$DetailTransaksiEventCopyWithImpl<$Res,
        _$DetailTransaksiFetchDataEventImpl>
    implements _$$DetailTransaksiFetchDataEventImplCopyWith<$Res> {
  __$$DetailTransaksiFetchDataEventImplCopyWithImpl(
      _$DetailTransaksiFetchDataEventImpl _value,
      $Res Function(_$DetailTransaksiFetchDataEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoice = null,
  }) {
    return _then(_$DetailTransaksiFetchDataEventImpl(
      invoice: null == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DetailTransaksiFetchDataEventImpl
    implements DetailTransaksiFetchDataEvent {
  const _$DetailTransaksiFetchDataEventImpl({required this.invoice});

  @override
  final String invoice;

  @override
  String toString() {
    return 'DetailTransaksiEvent.onGetDetail(invoice: $invoice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailTransaksiFetchDataEventImpl &&
            (identical(other.invoice, invoice) || other.invoice == invoice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invoice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailTransaksiFetchDataEventImplCopyWith<
          _$DetailTransaksiFetchDataEventImpl>
      get copyWith => __$$DetailTransaksiFetchDataEventImplCopyWithImpl<
          _$DetailTransaksiFetchDataEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String invoice) onGetDetail,
  }) {
    return onGetDetail(invoice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String invoice)? onGetDetail,
  }) {
    return onGetDetail?.call(invoice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String invoice)? onGetDetail,
    required TResult orElse(),
  }) {
    if (onGetDetail != null) {
      return onGetDetail(invoice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailTransaksiFetchDataEvent value) onGetDetail,
  }) {
    return onGetDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DetailTransaksiFetchDataEvent value)? onGetDetail,
  }) {
    return onGetDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailTransaksiFetchDataEvent value)? onGetDetail,
    required TResult orElse(),
  }) {
    if (onGetDetail != null) {
      return onGetDetail(this);
    }
    return orElse();
  }
}

abstract class DetailTransaksiFetchDataEvent implements DetailTransaksiEvent {
  const factory DetailTransaksiFetchDataEvent({required final String invoice}) =
      _$DetailTransaksiFetchDataEventImpl;

  @override
  String get invoice;
  @override
  @JsonKey(ignore: true)
  _$$DetailTransaksiFetchDataEventImplCopyWith<
          _$DetailTransaksiFetchDataEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailTransaksiState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(DetailTransaksiModel response) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(DetailTransaksiModel response)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(DetailTransaksiModel response)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailTransaksiInitialState value) initial,
    required TResult Function(DetailTransaksiLoadingState value) loading,
    required TResult Function(DetailTransaksiErrorState value) error,
    required TResult Function(DetailTransaksiLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DetailTransaksiInitialState value)? initial,
    TResult? Function(DetailTransaksiLoadingState value)? loading,
    TResult? Function(DetailTransaksiErrorState value)? error,
    TResult? Function(DetailTransaksiLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailTransaksiInitialState value)? initial,
    TResult Function(DetailTransaksiLoadingState value)? loading,
    TResult Function(DetailTransaksiErrorState value)? error,
    TResult Function(DetailTransaksiLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailTransaksiStateCopyWith<$Res> {
  factory $DetailTransaksiStateCopyWith(DetailTransaksiState value,
          $Res Function(DetailTransaksiState) then) =
      _$DetailTransaksiStateCopyWithImpl<$Res, DetailTransaksiState>;
}

/// @nodoc
class _$DetailTransaksiStateCopyWithImpl<$Res,
        $Val extends DetailTransaksiState>
    implements $DetailTransaksiStateCopyWith<$Res> {
  _$DetailTransaksiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DetailTransaksiInitialStateImplCopyWith<$Res> {
  factory _$$DetailTransaksiInitialStateImplCopyWith(
          _$DetailTransaksiInitialStateImpl value,
          $Res Function(_$DetailTransaksiInitialStateImpl) then) =
      __$$DetailTransaksiInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DetailTransaksiInitialStateImplCopyWithImpl<$Res>
    extends _$DetailTransaksiStateCopyWithImpl<$Res,
        _$DetailTransaksiInitialStateImpl>
    implements _$$DetailTransaksiInitialStateImplCopyWith<$Res> {
  __$$DetailTransaksiInitialStateImplCopyWithImpl(
      _$DetailTransaksiInitialStateImpl _value,
      $Res Function(_$DetailTransaksiInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DetailTransaksiInitialStateImpl implements DetailTransaksiInitialState {
  const _$DetailTransaksiInitialStateImpl();

  @override
  String toString() {
    return 'DetailTransaksiState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailTransaksiInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(DetailTransaksiModel response) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(DetailTransaksiModel response)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(DetailTransaksiModel response)? loaded,
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
    required TResult Function(DetailTransaksiInitialState value) initial,
    required TResult Function(DetailTransaksiLoadingState value) loading,
    required TResult Function(DetailTransaksiErrorState value) error,
    required TResult Function(DetailTransaksiLoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DetailTransaksiInitialState value)? initial,
    TResult? Function(DetailTransaksiLoadingState value)? loading,
    TResult? Function(DetailTransaksiErrorState value)? error,
    TResult? Function(DetailTransaksiLoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailTransaksiInitialState value)? initial,
    TResult Function(DetailTransaksiLoadingState value)? loading,
    TResult Function(DetailTransaksiErrorState value)? error,
    TResult Function(DetailTransaksiLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class DetailTransaksiInitialState implements DetailTransaksiState {
  const factory DetailTransaksiInitialState() =
      _$DetailTransaksiInitialStateImpl;
}

/// @nodoc
abstract class _$$DetailTransaksiLoadingStateImplCopyWith<$Res> {
  factory _$$DetailTransaksiLoadingStateImplCopyWith(
          _$DetailTransaksiLoadingStateImpl value,
          $Res Function(_$DetailTransaksiLoadingStateImpl) then) =
      __$$DetailTransaksiLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DetailTransaksiLoadingStateImplCopyWithImpl<$Res>
    extends _$DetailTransaksiStateCopyWithImpl<$Res,
        _$DetailTransaksiLoadingStateImpl>
    implements _$$DetailTransaksiLoadingStateImplCopyWith<$Res> {
  __$$DetailTransaksiLoadingStateImplCopyWithImpl(
      _$DetailTransaksiLoadingStateImpl _value,
      $Res Function(_$DetailTransaksiLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DetailTransaksiLoadingStateImpl implements DetailTransaksiLoadingState {
  const _$DetailTransaksiLoadingStateImpl();

  @override
  String toString() {
    return 'DetailTransaksiState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailTransaksiLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(DetailTransaksiModel response) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(DetailTransaksiModel response)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(DetailTransaksiModel response)? loaded,
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
    required TResult Function(DetailTransaksiInitialState value) initial,
    required TResult Function(DetailTransaksiLoadingState value) loading,
    required TResult Function(DetailTransaksiErrorState value) error,
    required TResult Function(DetailTransaksiLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DetailTransaksiInitialState value)? initial,
    TResult? Function(DetailTransaksiLoadingState value)? loading,
    TResult? Function(DetailTransaksiErrorState value)? error,
    TResult? Function(DetailTransaksiLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailTransaksiInitialState value)? initial,
    TResult Function(DetailTransaksiLoadingState value)? loading,
    TResult Function(DetailTransaksiErrorState value)? error,
    TResult Function(DetailTransaksiLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DetailTransaksiLoadingState implements DetailTransaksiState {
  const factory DetailTransaksiLoadingState() =
      _$DetailTransaksiLoadingStateImpl;
}

/// @nodoc
abstract class _$$DetailTransaksiErrorStateImplCopyWith<$Res> {
  factory _$$DetailTransaksiErrorStateImplCopyWith(
          _$DetailTransaksiErrorStateImpl value,
          $Res Function(_$DetailTransaksiErrorStateImpl) then) =
      __$$DetailTransaksiErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DetailTransaksiErrorStateImplCopyWithImpl<$Res>
    extends _$DetailTransaksiStateCopyWithImpl<$Res,
        _$DetailTransaksiErrorStateImpl>
    implements _$$DetailTransaksiErrorStateImplCopyWith<$Res> {
  __$$DetailTransaksiErrorStateImplCopyWithImpl(
      _$DetailTransaksiErrorStateImpl _value,
      $Res Function(_$DetailTransaksiErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DetailTransaksiErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DetailTransaksiErrorStateImpl implements DetailTransaksiErrorState {
  const _$DetailTransaksiErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'DetailTransaksiState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailTransaksiErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailTransaksiErrorStateImplCopyWith<_$DetailTransaksiErrorStateImpl>
      get copyWith => __$$DetailTransaksiErrorStateImplCopyWithImpl<
          _$DetailTransaksiErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(DetailTransaksiModel response) loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(DetailTransaksiModel response)? loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(DetailTransaksiModel response)? loaded,
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
    required TResult Function(DetailTransaksiInitialState value) initial,
    required TResult Function(DetailTransaksiLoadingState value) loading,
    required TResult Function(DetailTransaksiErrorState value) error,
    required TResult Function(DetailTransaksiLoadedState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DetailTransaksiInitialState value)? initial,
    TResult? Function(DetailTransaksiLoadingState value)? loading,
    TResult? Function(DetailTransaksiErrorState value)? error,
    TResult? Function(DetailTransaksiLoadedState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailTransaksiInitialState value)? initial,
    TResult Function(DetailTransaksiLoadingState value)? loading,
    TResult Function(DetailTransaksiErrorState value)? error,
    TResult Function(DetailTransaksiLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DetailTransaksiErrorState implements DetailTransaksiState {
  const factory DetailTransaksiErrorState(final String message) =
      _$DetailTransaksiErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$DetailTransaksiErrorStateImplCopyWith<_$DetailTransaksiErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailTransaksiLoadedStateImplCopyWith<$Res> {
  factory _$$DetailTransaksiLoadedStateImplCopyWith(
          _$DetailTransaksiLoadedStateImpl value,
          $Res Function(_$DetailTransaksiLoadedStateImpl) then) =
      __$$DetailTransaksiLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DetailTransaksiModel response});
}

/// @nodoc
class __$$DetailTransaksiLoadedStateImplCopyWithImpl<$Res>
    extends _$DetailTransaksiStateCopyWithImpl<$Res,
        _$DetailTransaksiLoadedStateImpl>
    implements _$$DetailTransaksiLoadedStateImplCopyWith<$Res> {
  __$$DetailTransaksiLoadedStateImplCopyWithImpl(
      _$DetailTransaksiLoadedStateImpl _value,
      $Res Function(_$DetailTransaksiLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$DetailTransaksiLoadedStateImpl(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as DetailTransaksiModel,
    ));
  }
}

/// @nodoc

class _$DetailTransaksiLoadedStateImpl implements DetailTransaksiLoadedState {
  const _$DetailTransaksiLoadedStateImpl({required this.response});

  @override
  final DetailTransaksiModel response;

  @override
  String toString() {
    return 'DetailTransaksiState.loaded(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailTransaksiLoadedStateImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailTransaksiLoadedStateImplCopyWith<_$DetailTransaksiLoadedStateImpl>
      get copyWith => __$$DetailTransaksiLoadedStateImplCopyWithImpl<
          _$DetailTransaksiLoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(DetailTransaksiModel response) loaded,
  }) {
    return loaded(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(DetailTransaksiModel response)? loaded,
  }) {
    return loaded?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(DetailTransaksiModel response)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailTransaksiInitialState value) initial,
    required TResult Function(DetailTransaksiLoadingState value) loading,
    required TResult Function(DetailTransaksiErrorState value) error,
    required TResult Function(DetailTransaksiLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DetailTransaksiInitialState value)? initial,
    TResult? Function(DetailTransaksiLoadingState value)? loading,
    TResult? Function(DetailTransaksiErrorState value)? error,
    TResult? Function(DetailTransaksiLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailTransaksiInitialState value)? initial,
    TResult Function(DetailTransaksiLoadingState value)? loading,
    TResult Function(DetailTransaksiErrorState value)? error,
    TResult Function(DetailTransaksiLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class DetailTransaksiLoadedState implements DetailTransaksiState {
  const factory DetailTransaksiLoadedState(
          {required final DetailTransaksiModel response}) =
      _$DetailTransaksiLoadedStateImpl;

  DetailTransaksiModel get response;
  @JsonKey(ignore: true)
  _$$DetailTransaksiLoadedStateImplCopyWith<_$DetailTransaksiLoadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
