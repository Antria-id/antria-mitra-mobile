// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_pesanan_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InvoicePesananEvent {
  String get invoice => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String invoice) onGetInvoicePesanan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String invoice)? onGetInvoicePesanan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String invoice)? onGetInvoicePesanan,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvoicePesananUserEvent value)
        onGetInvoicePesanan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvoicePesananUserEvent value)? onGetInvoicePesanan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvoicePesananUserEvent value)? onGetInvoicePesanan,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InvoicePesananEventCopyWith<InvoicePesananEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoicePesananEventCopyWith<$Res> {
  factory $InvoicePesananEventCopyWith(
          InvoicePesananEvent value, $Res Function(InvoicePesananEvent) then) =
      _$InvoicePesananEventCopyWithImpl<$Res, InvoicePesananEvent>;
  @useResult
  $Res call({String invoice});
}

/// @nodoc
class _$InvoicePesananEventCopyWithImpl<$Res, $Val extends InvoicePesananEvent>
    implements $InvoicePesananEventCopyWith<$Res> {
  _$InvoicePesananEventCopyWithImpl(this._value, this._then);

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
abstract class _$$InvoicePesananUserEventImplCopyWith<$Res>
    implements $InvoicePesananEventCopyWith<$Res> {
  factory _$$InvoicePesananUserEventImplCopyWith(
          _$InvoicePesananUserEventImpl value,
          $Res Function(_$InvoicePesananUserEventImpl) then) =
      __$$InvoicePesananUserEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String invoice});
}

/// @nodoc
class __$$InvoicePesananUserEventImplCopyWithImpl<$Res>
    extends _$InvoicePesananEventCopyWithImpl<$Res,
        _$InvoicePesananUserEventImpl>
    implements _$$InvoicePesananUserEventImplCopyWith<$Res> {
  __$$InvoicePesananUserEventImplCopyWithImpl(
      _$InvoicePesananUserEventImpl _value,
      $Res Function(_$InvoicePesananUserEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoice = null,
  }) {
    return _then(_$InvoicePesananUserEventImpl(
      invoice: null == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvoicePesananUserEventImpl implements InvoicePesananUserEvent {
  const _$InvoicePesananUserEventImpl({required this.invoice});

  @override
  final String invoice;

  @override
  String toString() {
    return 'InvoicePesananEvent.onGetInvoicePesanan(invoice: $invoice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoicePesananUserEventImpl &&
            (identical(other.invoice, invoice) || other.invoice == invoice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invoice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoicePesananUserEventImplCopyWith<_$InvoicePesananUserEventImpl>
      get copyWith => __$$InvoicePesananUserEventImplCopyWithImpl<
          _$InvoicePesananUserEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String invoice) onGetInvoicePesanan,
  }) {
    return onGetInvoicePesanan(invoice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String invoice)? onGetInvoicePesanan,
  }) {
    return onGetInvoicePesanan?.call(invoice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String invoice)? onGetInvoicePesanan,
    required TResult orElse(),
  }) {
    if (onGetInvoicePesanan != null) {
      return onGetInvoicePesanan(invoice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvoicePesananUserEvent value)
        onGetInvoicePesanan,
  }) {
    return onGetInvoicePesanan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvoicePesananUserEvent value)? onGetInvoicePesanan,
  }) {
    return onGetInvoicePesanan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvoicePesananUserEvent value)? onGetInvoicePesanan,
    required TResult orElse(),
  }) {
    if (onGetInvoicePesanan != null) {
      return onGetInvoicePesanan(this);
    }
    return orElse();
  }
}

abstract class InvoicePesananUserEvent implements InvoicePesananEvent {
  const factory InvoicePesananUserEvent({required final String invoice}) =
      _$InvoicePesananUserEventImpl;

  @override
  String get invoice;
  @override
  @JsonKey(ignore: true)
  _$$InvoicePesananUserEventImplCopyWith<_$InvoicePesananUserEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InvoicePesananState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(PesananInvoiceResponseModel response) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(PesananInvoiceResponseModel response)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(PesananInvoiceResponseModel response)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvoicePesananInitialState value) initial,
    required TResult Function(InvoicePesananLoadingState value) loading,
    required TResult Function(InvoicePesananErrorState value) error,
    required TResult Function(InvoicePesananLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvoicePesananInitialState value)? initial,
    TResult? Function(InvoicePesananLoadingState value)? loading,
    TResult? Function(InvoicePesananErrorState value)? error,
    TResult? Function(InvoicePesananLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvoicePesananInitialState value)? initial,
    TResult Function(InvoicePesananLoadingState value)? loading,
    TResult Function(InvoicePesananErrorState value)? error,
    TResult Function(InvoicePesananLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoicePesananStateCopyWith<$Res> {
  factory $InvoicePesananStateCopyWith(
          InvoicePesananState value, $Res Function(InvoicePesananState) then) =
      _$InvoicePesananStateCopyWithImpl<$Res, InvoicePesananState>;
}

/// @nodoc
class _$InvoicePesananStateCopyWithImpl<$Res, $Val extends InvoicePesananState>
    implements $InvoicePesananStateCopyWith<$Res> {
  _$InvoicePesananStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InvoicePesananInitialStateImplCopyWith<$Res> {
  factory _$$InvoicePesananInitialStateImplCopyWith(
          _$InvoicePesananInitialStateImpl value,
          $Res Function(_$InvoicePesananInitialStateImpl) then) =
      __$$InvoicePesananInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvoicePesananInitialStateImplCopyWithImpl<$Res>
    extends _$InvoicePesananStateCopyWithImpl<$Res,
        _$InvoicePesananInitialStateImpl>
    implements _$$InvoicePesananInitialStateImplCopyWith<$Res> {
  __$$InvoicePesananInitialStateImplCopyWithImpl(
      _$InvoicePesananInitialStateImpl _value,
      $Res Function(_$InvoicePesananInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvoicePesananInitialStateImpl implements InvoicePesananInitialState {
  const _$InvoicePesananInitialStateImpl();

  @override
  String toString() {
    return 'InvoicePesananState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoicePesananInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(PesananInvoiceResponseModel response) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(PesananInvoiceResponseModel response)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(PesananInvoiceResponseModel response)? loaded,
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
    required TResult Function(InvoicePesananInitialState value) initial,
    required TResult Function(InvoicePesananLoadingState value) loading,
    required TResult Function(InvoicePesananErrorState value) error,
    required TResult Function(InvoicePesananLoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvoicePesananInitialState value)? initial,
    TResult? Function(InvoicePesananLoadingState value)? loading,
    TResult? Function(InvoicePesananErrorState value)? error,
    TResult? Function(InvoicePesananLoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvoicePesananInitialState value)? initial,
    TResult Function(InvoicePesananLoadingState value)? loading,
    TResult Function(InvoicePesananErrorState value)? error,
    TResult Function(InvoicePesananLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InvoicePesananInitialState implements InvoicePesananState {
  const factory InvoicePesananInitialState() = _$InvoicePesananInitialStateImpl;
}

/// @nodoc
abstract class _$$InvoicePesananLoadingStateImplCopyWith<$Res> {
  factory _$$InvoicePesananLoadingStateImplCopyWith(
          _$InvoicePesananLoadingStateImpl value,
          $Res Function(_$InvoicePesananLoadingStateImpl) then) =
      __$$InvoicePesananLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvoicePesananLoadingStateImplCopyWithImpl<$Res>
    extends _$InvoicePesananStateCopyWithImpl<$Res,
        _$InvoicePesananLoadingStateImpl>
    implements _$$InvoicePesananLoadingStateImplCopyWith<$Res> {
  __$$InvoicePesananLoadingStateImplCopyWithImpl(
      _$InvoicePesananLoadingStateImpl _value,
      $Res Function(_$InvoicePesananLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvoicePesananLoadingStateImpl implements InvoicePesananLoadingState {
  const _$InvoicePesananLoadingStateImpl();

  @override
  String toString() {
    return 'InvoicePesananState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoicePesananLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(PesananInvoiceResponseModel response) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(PesananInvoiceResponseModel response)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(PesananInvoiceResponseModel response)? loaded,
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
    required TResult Function(InvoicePesananInitialState value) initial,
    required TResult Function(InvoicePesananLoadingState value) loading,
    required TResult Function(InvoicePesananErrorState value) error,
    required TResult Function(InvoicePesananLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvoicePesananInitialState value)? initial,
    TResult? Function(InvoicePesananLoadingState value)? loading,
    TResult? Function(InvoicePesananErrorState value)? error,
    TResult? Function(InvoicePesananLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvoicePesananInitialState value)? initial,
    TResult Function(InvoicePesananLoadingState value)? loading,
    TResult Function(InvoicePesananErrorState value)? error,
    TResult Function(InvoicePesananLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class InvoicePesananLoadingState implements InvoicePesananState {
  const factory InvoicePesananLoadingState() = _$InvoicePesananLoadingStateImpl;
}

/// @nodoc
abstract class _$$InvoicePesananErrorStateImplCopyWith<$Res> {
  factory _$$InvoicePesananErrorStateImplCopyWith(
          _$InvoicePesananErrorStateImpl value,
          $Res Function(_$InvoicePesananErrorStateImpl) then) =
      __$$InvoicePesananErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$InvoicePesananErrorStateImplCopyWithImpl<$Res>
    extends _$InvoicePesananStateCopyWithImpl<$Res,
        _$InvoicePesananErrorStateImpl>
    implements _$$InvoicePesananErrorStateImplCopyWith<$Res> {
  __$$InvoicePesananErrorStateImplCopyWithImpl(
      _$InvoicePesananErrorStateImpl _value,
      $Res Function(_$InvoicePesananErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$InvoicePesananErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvoicePesananErrorStateImpl implements InvoicePesananErrorState {
  const _$InvoicePesananErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'InvoicePesananState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoicePesananErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoicePesananErrorStateImplCopyWith<_$InvoicePesananErrorStateImpl>
      get copyWith => __$$InvoicePesananErrorStateImplCopyWithImpl<
          _$InvoicePesananErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(PesananInvoiceResponseModel response) loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(PesananInvoiceResponseModel response)? loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(PesananInvoiceResponseModel response)? loaded,
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
    required TResult Function(InvoicePesananInitialState value) initial,
    required TResult Function(InvoicePesananLoadingState value) loading,
    required TResult Function(InvoicePesananErrorState value) error,
    required TResult Function(InvoicePesananLoadedState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvoicePesananInitialState value)? initial,
    TResult? Function(InvoicePesananLoadingState value)? loading,
    TResult? Function(InvoicePesananErrorState value)? error,
    TResult? Function(InvoicePesananLoadedState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvoicePesananInitialState value)? initial,
    TResult Function(InvoicePesananLoadingState value)? loading,
    TResult Function(InvoicePesananErrorState value)? error,
    TResult Function(InvoicePesananLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class InvoicePesananErrorState implements InvoicePesananState {
  const factory InvoicePesananErrorState(final String message) =
      _$InvoicePesananErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$InvoicePesananErrorStateImplCopyWith<_$InvoicePesananErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvoicePesananLoadedStateImplCopyWith<$Res> {
  factory _$$InvoicePesananLoadedStateImplCopyWith(
          _$InvoicePesananLoadedStateImpl value,
          $Res Function(_$InvoicePesananLoadedStateImpl) then) =
      __$$InvoicePesananLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PesananInvoiceResponseModel response});
}

/// @nodoc
class __$$InvoicePesananLoadedStateImplCopyWithImpl<$Res>
    extends _$InvoicePesananStateCopyWithImpl<$Res,
        _$InvoicePesananLoadedStateImpl>
    implements _$$InvoicePesananLoadedStateImplCopyWith<$Res> {
  __$$InvoicePesananLoadedStateImplCopyWithImpl(
      _$InvoicePesananLoadedStateImpl _value,
      $Res Function(_$InvoicePesananLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$InvoicePesananLoadedStateImpl(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as PesananInvoiceResponseModel,
    ));
  }
}

/// @nodoc

class _$InvoicePesananLoadedStateImpl implements InvoicePesananLoadedState {
  const _$InvoicePesananLoadedStateImpl({required this.response});

  @override
  final PesananInvoiceResponseModel response;

  @override
  String toString() {
    return 'InvoicePesananState.loaded(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoicePesananLoadedStateImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoicePesananLoadedStateImplCopyWith<_$InvoicePesananLoadedStateImpl>
      get copyWith => __$$InvoicePesananLoadedStateImplCopyWithImpl<
          _$InvoicePesananLoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(PesananInvoiceResponseModel response) loaded,
  }) {
    return loaded(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(PesananInvoiceResponseModel response)? loaded,
  }) {
    return loaded?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(PesananInvoiceResponseModel response)? loaded,
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
    required TResult Function(InvoicePesananInitialState value) initial,
    required TResult Function(InvoicePesananLoadingState value) loading,
    required TResult Function(InvoicePesananErrorState value) error,
    required TResult Function(InvoicePesananLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvoicePesananInitialState value)? initial,
    TResult? Function(InvoicePesananLoadingState value)? loading,
    TResult? Function(InvoicePesananErrorState value)? error,
    TResult? Function(InvoicePesananLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvoicePesananInitialState value)? initial,
    TResult Function(InvoicePesananLoadingState value)? loading,
    TResult Function(InvoicePesananErrorState value)? error,
    TResult Function(InvoicePesananLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class InvoicePesananLoadedState implements InvoicePesananState {
  const factory InvoicePesananLoadedState(
          {required final PesananInvoiceResponseModel response}) =
      _$InvoicePesananLoadedStateImpl;

  PesananInvoiceResponseModel get response;
  @JsonKey(ignore: true)
  _$$InvoicePesananLoadedStateImplCopyWith<_$InvoicePesananLoadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
