// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) changeIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? changeIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? changeIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ChangeIndex<T> value) changeIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ChangeIndex<T> value)? changeIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ChangeIndex<T> value)? changeIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<T, $Res> {
  factory $HomeStateCopyWith(
          HomeState<T> value, $Res Function(HomeState<T>) then) =
      _$HomeStateCopyWithImpl<T, $Res, HomeState<T>>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<T, $Res, $Val extends HomeState<T>>
    implements $HomeStateCopyWith<T, $Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) changeIndex,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? changeIndex,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? changeIndex,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ChangeIndex<T> value) changeIndex,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ChangeIndex<T> value)? changeIndex,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ChangeIndex<T> value)? changeIndex,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements HomeState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$ChangeIndexImplCopyWith<T, $Res> {
  factory _$$ChangeIndexImplCopyWith(_$ChangeIndexImpl<T> value,
          $Res Function(_$ChangeIndexImpl<T>) then) =
      __$$ChangeIndexImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangeIndexImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$ChangeIndexImpl<T>>
    implements _$$ChangeIndexImplCopyWith<T, $Res> {
  __$$ChangeIndexImplCopyWithImpl(
      _$ChangeIndexImpl<T> _value, $Res Function(_$ChangeIndexImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangeIndexImpl<T>(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeIndexImpl<T> implements ChangeIndex<T> {
  const _$ChangeIndexImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'HomeState<$T>.changeIndex(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeIndexImpl<T> &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeIndexImplCopyWith<T, _$ChangeIndexImpl<T>> get copyWith =>
      __$$ChangeIndexImplCopyWithImpl<T, _$ChangeIndexImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) changeIndex,
  }) {
    return changeIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? changeIndex,
  }) {
    return changeIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? changeIndex,
    required TResult orElse(),
  }) {
    if (changeIndex != null) {
      return changeIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ChangeIndex<T> value) changeIndex,
  }) {
    return changeIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ChangeIndex<T> value)? changeIndex,
  }) {
    return changeIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ChangeIndex<T> value)? changeIndex,
    required TResult orElse(),
  }) {
    if (changeIndex != null) {
      return changeIndex(this);
    }
    return orElse();
  }
}

abstract class ChangeIndex<T> implements HomeState<T> {
  const factory ChangeIndex({required final int index}) = _$ChangeIndexImpl<T>;

  int get index;
  @JsonKey(ignore: true)
  _$$ChangeIndexImplCopyWith<T, _$ChangeIndexImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
