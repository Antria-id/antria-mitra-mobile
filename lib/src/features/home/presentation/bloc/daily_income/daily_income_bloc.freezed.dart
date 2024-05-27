// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_income_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DailyIncomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onDailyIncome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onDailyIncome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onDailyIncome,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDailyFetchDataEvent value) onDailyIncome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDailyFetchDataEvent value)? onDailyIncome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDailyFetchDataEvent value)? onDailyIncome,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyIncomeEventCopyWith<$Res> {
  factory $DailyIncomeEventCopyWith(
          DailyIncomeEvent value, $Res Function(DailyIncomeEvent) then) =
      _$DailyIncomeEventCopyWithImpl<$Res, DailyIncomeEvent>;
}

/// @nodoc
class _$DailyIncomeEventCopyWithImpl<$Res, $Val extends DailyIncomeEvent>
    implements $DailyIncomeEventCopyWith<$Res> {
  _$DailyIncomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetDailyFetchDataEventImplCopyWith<$Res> {
  factory _$$GetDailyFetchDataEventImplCopyWith(
          _$GetDailyFetchDataEventImpl value,
          $Res Function(_$GetDailyFetchDataEventImpl) then) =
      __$$GetDailyFetchDataEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDailyFetchDataEventImplCopyWithImpl<$Res>
    extends _$DailyIncomeEventCopyWithImpl<$Res, _$GetDailyFetchDataEventImpl>
    implements _$$GetDailyFetchDataEventImplCopyWith<$Res> {
  __$$GetDailyFetchDataEventImplCopyWithImpl(
      _$GetDailyFetchDataEventImpl _value,
      $Res Function(_$GetDailyFetchDataEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetDailyFetchDataEventImpl implements GetDailyFetchDataEvent {
  const _$GetDailyFetchDataEventImpl();

  @override
  String toString() {
    return 'DailyIncomeEvent.onDailyIncome()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDailyFetchDataEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onDailyIncome,
  }) {
    return onDailyIncome();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onDailyIncome,
  }) {
    return onDailyIncome?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onDailyIncome,
    required TResult orElse(),
  }) {
    if (onDailyIncome != null) {
      return onDailyIncome();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDailyFetchDataEvent value) onDailyIncome,
  }) {
    return onDailyIncome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDailyFetchDataEvent value)? onDailyIncome,
  }) {
    return onDailyIncome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDailyFetchDataEvent value)? onDailyIncome,
    required TResult orElse(),
  }) {
    if (onDailyIncome != null) {
      return onDailyIncome(this);
    }
    return orElse();
  }
}

abstract class GetDailyFetchDataEvent implements DailyIncomeEvent {
  const factory GetDailyFetchDataEvent() = _$GetDailyFetchDataEventImpl;
}

/// @nodoc
mixin _$DailyIncomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<DailyIncome> dailyIncome) loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<DailyIncome> dailyIncome)? loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<DailyIncome> dailyIncome)? loadedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DailyIncomeInitialState value) initial,
    required TResult Function(DailyIncomeLoadingState value) loading,
    required TResult Function(DailyIncomeErrorState value) error,
    required TResult Function(DailyIncomeLoadedState value) loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DailyIncomeInitialState value)? initial,
    TResult? Function(DailyIncomeLoadingState value)? loading,
    TResult? Function(DailyIncomeErrorState value)? error,
    TResult? Function(DailyIncomeLoadedState value)? loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DailyIncomeInitialState value)? initial,
    TResult Function(DailyIncomeLoadingState value)? loading,
    TResult Function(DailyIncomeErrorState value)? error,
    TResult Function(DailyIncomeLoadedState value)? loadedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyIncomeStateCopyWith<$Res> {
  factory $DailyIncomeStateCopyWith(
          DailyIncomeState value, $Res Function(DailyIncomeState) then) =
      _$DailyIncomeStateCopyWithImpl<$Res, DailyIncomeState>;
}

/// @nodoc
class _$DailyIncomeStateCopyWithImpl<$Res, $Val extends DailyIncomeState>
    implements $DailyIncomeStateCopyWith<$Res> {
  _$DailyIncomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DailyIncomeInitialStateImplCopyWith<$Res> {
  factory _$$DailyIncomeInitialStateImplCopyWith(
          _$DailyIncomeInitialStateImpl value,
          $Res Function(_$DailyIncomeInitialStateImpl) then) =
      __$$DailyIncomeInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DailyIncomeInitialStateImplCopyWithImpl<$Res>
    extends _$DailyIncomeStateCopyWithImpl<$Res, _$DailyIncomeInitialStateImpl>
    implements _$$DailyIncomeInitialStateImplCopyWith<$Res> {
  __$$DailyIncomeInitialStateImplCopyWithImpl(
      _$DailyIncomeInitialStateImpl _value,
      $Res Function(_$DailyIncomeInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DailyIncomeInitialStateImpl implements DailyIncomeInitialState {
  const _$DailyIncomeInitialStateImpl();

  @override
  String toString() {
    return 'DailyIncomeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyIncomeInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<DailyIncome> dailyIncome) loadedState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<DailyIncome> dailyIncome)? loadedState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<DailyIncome> dailyIncome)? loadedState,
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
    required TResult Function(DailyIncomeInitialState value) initial,
    required TResult Function(DailyIncomeLoadingState value) loading,
    required TResult Function(DailyIncomeErrorState value) error,
    required TResult Function(DailyIncomeLoadedState value) loadedState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DailyIncomeInitialState value)? initial,
    TResult? Function(DailyIncomeLoadingState value)? loading,
    TResult? Function(DailyIncomeErrorState value)? error,
    TResult? Function(DailyIncomeLoadedState value)? loadedState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DailyIncomeInitialState value)? initial,
    TResult Function(DailyIncomeLoadingState value)? loading,
    TResult Function(DailyIncomeErrorState value)? error,
    TResult Function(DailyIncomeLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class DailyIncomeInitialState implements DailyIncomeState {
  const factory DailyIncomeInitialState() = _$DailyIncomeInitialStateImpl;
}

/// @nodoc
abstract class _$$DailyIncomeLoadingStateImplCopyWith<$Res> {
  factory _$$DailyIncomeLoadingStateImplCopyWith(
          _$DailyIncomeLoadingStateImpl value,
          $Res Function(_$DailyIncomeLoadingStateImpl) then) =
      __$$DailyIncomeLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DailyIncomeLoadingStateImplCopyWithImpl<$Res>
    extends _$DailyIncomeStateCopyWithImpl<$Res, _$DailyIncomeLoadingStateImpl>
    implements _$$DailyIncomeLoadingStateImplCopyWith<$Res> {
  __$$DailyIncomeLoadingStateImplCopyWithImpl(
      _$DailyIncomeLoadingStateImpl _value,
      $Res Function(_$DailyIncomeLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DailyIncomeLoadingStateImpl implements DailyIncomeLoadingState {
  const _$DailyIncomeLoadingStateImpl();

  @override
  String toString() {
    return 'DailyIncomeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyIncomeLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<DailyIncome> dailyIncome) loadedState,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<DailyIncome> dailyIncome)? loadedState,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<DailyIncome> dailyIncome)? loadedState,
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
    required TResult Function(DailyIncomeInitialState value) initial,
    required TResult Function(DailyIncomeLoadingState value) loading,
    required TResult Function(DailyIncomeErrorState value) error,
    required TResult Function(DailyIncomeLoadedState value) loadedState,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DailyIncomeInitialState value)? initial,
    TResult? Function(DailyIncomeLoadingState value)? loading,
    TResult? Function(DailyIncomeErrorState value)? error,
    TResult? Function(DailyIncomeLoadedState value)? loadedState,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DailyIncomeInitialState value)? initial,
    TResult Function(DailyIncomeLoadingState value)? loading,
    TResult Function(DailyIncomeErrorState value)? error,
    TResult Function(DailyIncomeLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DailyIncomeLoadingState implements DailyIncomeState {
  const factory DailyIncomeLoadingState() = _$DailyIncomeLoadingStateImpl;
}

/// @nodoc
abstract class _$$DailyIncomeErrorStateImplCopyWith<$Res> {
  factory _$$DailyIncomeErrorStateImplCopyWith(
          _$DailyIncomeErrorStateImpl value,
          $Res Function(_$DailyIncomeErrorStateImpl) then) =
      __$$DailyIncomeErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DailyIncomeErrorStateImplCopyWithImpl<$Res>
    extends _$DailyIncomeStateCopyWithImpl<$Res, _$DailyIncomeErrorStateImpl>
    implements _$$DailyIncomeErrorStateImplCopyWith<$Res> {
  __$$DailyIncomeErrorStateImplCopyWithImpl(_$DailyIncomeErrorStateImpl _value,
      $Res Function(_$DailyIncomeErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DailyIncomeErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DailyIncomeErrorStateImpl implements DailyIncomeErrorState {
  const _$DailyIncomeErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'DailyIncomeState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyIncomeErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyIncomeErrorStateImplCopyWith<_$DailyIncomeErrorStateImpl>
      get copyWith => __$$DailyIncomeErrorStateImplCopyWithImpl<
          _$DailyIncomeErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<DailyIncome> dailyIncome) loadedState,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<DailyIncome> dailyIncome)? loadedState,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<DailyIncome> dailyIncome)? loadedState,
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
    required TResult Function(DailyIncomeInitialState value) initial,
    required TResult Function(DailyIncomeLoadingState value) loading,
    required TResult Function(DailyIncomeErrorState value) error,
    required TResult Function(DailyIncomeLoadedState value) loadedState,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DailyIncomeInitialState value)? initial,
    TResult? Function(DailyIncomeLoadingState value)? loading,
    TResult? Function(DailyIncomeErrorState value)? error,
    TResult? Function(DailyIncomeLoadedState value)? loadedState,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DailyIncomeInitialState value)? initial,
    TResult Function(DailyIncomeLoadingState value)? loading,
    TResult Function(DailyIncomeErrorState value)? error,
    TResult Function(DailyIncomeLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DailyIncomeErrorState implements DailyIncomeState {
  const factory DailyIncomeErrorState(final String message) =
      _$DailyIncomeErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$DailyIncomeErrorStateImplCopyWith<_$DailyIncomeErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DailyIncomeLoadedStateImplCopyWith<$Res> {
  factory _$$DailyIncomeLoadedStateImplCopyWith(
          _$DailyIncomeLoadedStateImpl value,
          $Res Function(_$DailyIncomeLoadedStateImpl) then) =
      __$$DailyIncomeLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DailyIncome> dailyIncome});
}

/// @nodoc
class __$$DailyIncomeLoadedStateImplCopyWithImpl<$Res>
    extends _$DailyIncomeStateCopyWithImpl<$Res, _$DailyIncomeLoadedStateImpl>
    implements _$$DailyIncomeLoadedStateImplCopyWith<$Res> {
  __$$DailyIncomeLoadedStateImplCopyWithImpl(
      _$DailyIncomeLoadedStateImpl _value,
      $Res Function(_$DailyIncomeLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dailyIncome = null,
  }) {
    return _then(_$DailyIncomeLoadedStateImpl(
      dailyIncome: null == dailyIncome
          ? _value._dailyIncome
          : dailyIncome // ignore: cast_nullable_to_non_nullable
              as List<DailyIncome>,
    ));
  }
}

/// @nodoc

class _$DailyIncomeLoadedStateImpl implements DailyIncomeLoadedState {
  const _$DailyIncomeLoadedStateImpl(
      {required final List<DailyIncome> dailyIncome})
      : _dailyIncome = dailyIncome;

  final List<DailyIncome> _dailyIncome;
  @override
  List<DailyIncome> get dailyIncome {
    if (_dailyIncome is EqualUnmodifiableListView) return _dailyIncome;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dailyIncome);
  }

  @override
  String toString() {
    return 'DailyIncomeState.loadedState(dailyIncome: $dailyIncome)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyIncomeLoadedStateImpl &&
            const DeepCollectionEquality()
                .equals(other._dailyIncome, _dailyIncome));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_dailyIncome));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyIncomeLoadedStateImplCopyWith<_$DailyIncomeLoadedStateImpl>
      get copyWith => __$$DailyIncomeLoadedStateImplCopyWithImpl<
          _$DailyIncomeLoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<DailyIncome> dailyIncome) loadedState,
  }) {
    return loadedState(dailyIncome);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<DailyIncome> dailyIncome)? loadedState,
  }) {
    return loadedState?.call(dailyIncome);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<DailyIncome> dailyIncome)? loadedState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(dailyIncome);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DailyIncomeInitialState value) initial,
    required TResult Function(DailyIncomeLoadingState value) loading,
    required TResult Function(DailyIncomeErrorState value) error,
    required TResult Function(DailyIncomeLoadedState value) loadedState,
  }) {
    return loadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DailyIncomeInitialState value)? initial,
    TResult? Function(DailyIncomeLoadingState value)? loading,
    TResult? Function(DailyIncomeErrorState value)? error,
    TResult? Function(DailyIncomeLoadedState value)? loadedState,
  }) {
    return loadedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DailyIncomeInitialState value)? initial,
    TResult Function(DailyIncomeLoadingState value)? loading,
    TResult Function(DailyIncomeErrorState value)? error,
    TResult Function(DailyIncomeLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(this);
    }
    return orElse();
  }
}

abstract class DailyIncomeLoadedState implements DailyIncomeState {
  const factory DailyIncomeLoadedState(
          {required final List<DailyIncome> dailyIncome}) =
      _$DailyIncomeLoadedStateImpl;

  List<DailyIncome> get dailyIncome;
  @JsonKey(ignore: true)
  _$$DailyIncomeLoadedStateImplCopyWith<_$DailyIncomeLoadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
