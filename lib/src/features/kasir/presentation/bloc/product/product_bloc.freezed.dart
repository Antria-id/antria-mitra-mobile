// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductFetchDataEvent value) onGetProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductFetchDataEvent value)? onGetProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductFetchDataEvent value)? onGetProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProductFetchDataEventImplCopyWith<$Res> {
  factory _$$ProductFetchDataEventImplCopyWith(
          _$ProductFetchDataEventImpl value,
          $Res Function(_$ProductFetchDataEventImpl) then) =
      __$$ProductFetchDataEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductFetchDataEventImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$ProductFetchDataEventImpl>
    implements _$$ProductFetchDataEventImplCopyWith<$Res> {
  __$$ProductFetchDataEventImplCopyWithImpl(_$ProductFetchDataEventImpl _value,
      $Res Function(_$ProductFetchDataEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductFetchDataEventImpl implements ProductFetchDataEvent {
  const _$ProductFetchDataEventImpl();

  @override
  String toString() {
    return 'ProductEvent.onGetProduct()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductFetchDataEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetProduct,
  }) {
    return onGetProduct();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetProduct,
  }) {
    return onGetProduct?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetProduct,
    required TResult orElse(),
  }) {
    if (onGetProduct != null) {
      return onGetProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductFetchDataEvent value) onGetProduct,
  }) {
    return onGetProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductFetchDataEvent value)? onGetProduct,
  }) {
    return onGetProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductFetchDataEvent value)? onGetProduct,
    required TResult orElse(),
  }) {
    if (onGetProduct != null) {
      return onGetProduct(this);
    }
    return orElse();
  }
}

abstract class ProductFetchDataEvent implements ProductEvent {
  const factory ProductFetchDataEvent() = _$ProductFetchDataEventImpl;
}

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<ProductModel> product) loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<ProductModel> product)? loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<ProductModel> product)? loadedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductInitialState value) initial,
    required TResult Function(ProductLoadingState value) loading,
    required TResult Function(ProductErrorState value) error,
    required TResult Function(ProductLoadedState value) loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductInitialState value)? initial,
    TResult? Function(ProductLoadingState value)? loading,
    TResult? Function(ProductErrorState value)? error,
    TResult? Function(ProductLoadedState value)? loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductInitialState value)? initial,
    TResult Function(ProductLoadingState value)? loading,
    TResult Function(ProductErrorState value)? error,
    TResult Function(ProductLoadedState value)? loadedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProductInitialStateImplCopyWith<$Res> {
  factory _$$ProductInitialStateImplCopyWith(_$ProductInitialStateImpl value,
          $Res Function(_$ProductInitialStateImpl) then) =
      __$$ProductInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductInitialStateImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductInitialStateImpl>
    implements _$$ProductInitialStateImplCopyWith<$Res> {
  __$$ProductInitialStateImplCopyWithImpl(_$ProductInitialStateImpl _value,
      $Res Function(_$ProductInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductInitialStateImpl implements ProductInitialState {
  const _$ProductInitialStateImpl();

  @override
  String toString() {
    return 'ProductState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<ProductModel> product) loadedState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<ProductModel> product)? loadedState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<ProductModel> product)? loadedState,
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
    required TResult Function(ProductInitialState value) initial,
    required TResult Function(ProductLoadingState value) loading,
    required TResult Function(ProductErrorState value) error,
    required TResult Function(ProductLoadedState value) loadedState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductInitialState value)? initial,
    TResult? Function(ProductLoadingState value)? loading,
    TResult? Function(ProductErrorState value)? error,
    TResult? Function(ProductLoadedState value)? loadedState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductInitialState value)? initial,
    TResult Function(ProductLoadingState value)? loading,
    TResult Function(ProductErrorState value)? error,
    TResult Function(ProductLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProductInitialState implements ProductState {
  const factory ProductInitialState() = _$ProductInitialStateImpl;
}

/// @nodoc
abstract class _$$ProductLoadingStateImplCopyWith<$Res> {
  factory _$$ProductLoadingStateImplCopyWith(_$ProductLoadingStateImpl value,
          $Res Function(_$ProductLoadingStateImpl) then) =
      __$$ProductLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductLoadingStateImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductLoadingStateImpl>
    implements _$$ProductLoadingStateImplCopyWith<$Res> {
  __$$ProductLoadingStateImplCopyWithImpl(_$ProductLoadingStateImpl _value,
      $Res Function(_$ProductLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductLoadingStateImpl implements ProductLoadingState {
  const _$ProductLoadingStateImpl();

  @override
  String toString() {
    return 'ProductState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<ProductModel> product) loadedState,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<ProductModel> product)? loadedState,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<ProductModel> product)? loadedState,
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
    required TResult Function(ProductInitialState value) initial,
    required TResult Function(ProductLoadingState value) loading,
    required TResult Function(ProductErrorState value) error,
    required TResult Function(ProductLoadedState value) loadedState,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductInitialState value)? initial,
    TResult? Function(ProductLoadingState value)? loading,
    TResult? Function(ProductErrorState value)? error,
    TResult? Function(ProductLoadedState value)? loadedState,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductInitialState value)? initial,
    TResult Function(ProductLoadingState value)? loading,
    TResult Function(ProductErrorState value)? error,
    TResult Function(ProductLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProductLoadingState implements ProductState {
  const factory ProductLoadingState() = _$ProductLoadingStateImpl;
}

/// @nodoc
abstract class _$$ProductErrorStateImplCopyWith<$Res> {
  factory _$$ProductErrorStateImplCopyWith(_$ProductErrorStateImpl value,
          $Res Function(_$ProductErrorStateImpl) then) =
      __$$ProductErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ProductErrorStateImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductErrorStateImpl>
    implements _$$ProductErrorStateImplCopyWith<$Res> {
  __$$ProductErrorStateImplCopyWithImpl(_$ProductErrorStateImpl _value,
      $Res Function(_$ProductErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ProductErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductErrorStateImpl implements ProductErrorState {
  const _$ProductErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ProductState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductErrorStateImplCopyWith<_$ProductErrorStateImpl> get copyWith =>
      __$$ProductErrorStateImplCopyWithImpl<_$ProductErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<ProductModel> product) loadedState,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<ProductModel> product)? loadedState,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<ProductModel> product)? loadedState,
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
    required TResult Function(ProductInitialState value) initial,
    required TResult Function(ProductLoadingState value) loading,
    required TResult Function(ProductErrorState value) error,
    required TResult Function(ProductLoadedState value) loadedState,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductInitialState value)? initial,
    TResult? Function(ProductLoadingState value)? loading,
    TResult? Function(ProductErrorState value)? error,
    TResult? Function(ProductLoadedState value)? loadedState,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductInitialState value)? initial,
    TResult Function(ProductLoadingState value)? loading,
    TResult Function(ProductErrorState value)? error,
    TResult Function(ProductLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProductErrorState implements ProductState {
  const factory ProductErrorState(final String message) =
      _$ProductErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ProductErrorStateImplCopyWith<_$ProductErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductLoadedStateImplCopyWith<$Res> {
  factory _$$ProductLoadedStateImplCopyWith(_$ProductLoadedStateImpl value,
          $Res Function(_$ProductLoadedStateImpl) then) =
      __$$ProductLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductModel> product});
}

/// @nodoc
class __$$ProductLoadedStateImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductLoadedStateImpl>
    implements _$$ProductLoadedStateImplCopyWith<$Res> {
  __$$ProductLoadedStateImplCopyWithImpl(_$ProductLoadedStateImpl _value,
      $Res Function(_$ProductLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$ProductLoadedStateImpl(
      product: null == product
          ? _value._product
          : product // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$ProductLoadedStateImpl implements ProductLoadedState {
  const _$ProductLoadedStateImpl({required final List<ProductModel> product})
      : _product = product;

  final List<ProductModel> _product;
  @override
  List<ProductModel> get product {
    if (_product is EqualUnmodifiableListView) return _product;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_product);
  }

  @override
  String toString() {
    return 'ProductState.loadedState(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductLoadedStateImpl &&
            const DeepCollectionEquality().equals(other._product, _product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_product));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductLoadedStateImplCopyWith<_$ProductLoadedStateImpl> get copyWith =>
      __$$ProductLoadedStateImplCopyWithImpl<_$ProductLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<ProductModel> product) loadedState,
  }) {
    return loadedState(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<ProductModel> product)? loadedState,
  }) {
    return loadedState?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<ProductModel> product)? loadedState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductInitialState value) initial,
    required TResult Function(ProductLoadingState value) loading,
    required TResult Function(ProductErrorState value) error,
    required TResult Function(ProductLoadedState value) loadedState,
  }) {
    return loadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductInitialState value)? initial,
    TResult? Function(ProductLoadingState value)? loading,
    TResult? Function(ProductErrorState value)? error,
    TResult? Function(ProductLoadedState value)? loadedState,
  }) {
    return loadedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductInitialState value)? initial,
    TResult Function(ProductLoadingState value)? loading,
    TResult Function(ProductErrorState value)? error,
    TResult Function(ProductLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(this);
    }
    return orElse();
  }
}

abstract class ProductLoadedState implements ProductState {
  const factory ProductLoadedState(
      {required final List<ProductModel> product}) = _$ProductLoadedStateImpl;

  List<ProductModel> get product;
  @JsonKey(ignore: true)
  _$$ProductLoadedStateImplCopyWith<_$ProductLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
