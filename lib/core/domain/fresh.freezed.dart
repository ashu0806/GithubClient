// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fresh.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FreshClass<T> {
  bool get isFresh => throw _privateConstructorUsedError;
  T get entity => throw _privateConstructorUsedError;
  bool? get isNextPagePresent => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FreshClassCopyWith<T, FreshClass<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreshClassCopyWith<T, $Res> {
  factory $FreshClassCopyWith(
          FreshClass<T> value, $Res Function(FreshClass<T>) then) =
      _$FreshClassCopyWithImpl<T, $Res>;
  $Res call({bool isFresh, T entity, bool? isNextPagePresent});
}

/// @nodoc
class _$FreshClassCopyWithImpl<T, $Res>
    implements $FreshClassCopyWith<T, $Res> {
  _$FreshClassCopyWithImpl(this._value, this._then);

  final FreshClass<T> _value;
  // ignore: unused_field
  final $Res Function(FreshClass<T>) _then;

  @override
  $Res call({
    Object? isFresh = freezed,
    Object? entity = freezed,
    Object? isNextPagePresent = freezed,
  }) {
    return _then(_value.copyWith(
      isFresh: isFresh == freezed
          ? _value.isFresh
          : isFresh // ignore: cast_nullable_to_non_nullable
              as bool,
      entity: entity == freezed
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as T,
      isNextPagePresent: isNextPagePresent == freezed
          ? _value.isNextPagePresent
          : isNextPagePresent // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_FreshClassCopyWith<T, $Res>
    implements $FreshClassCopyWith<T, $Res> {
  factory _$$_FreshClassCopyWith(
          _$_FreshClass<T> value, $Res Function(_$_FreshClass<T>) then) =
      __$$_FreshClassCopyWithImpl<T, $Res>;
  @override
  $Res call({bool isFresh, T entity, bool? isNextPagePresent});
}

/// @nodoc
class __$$_FreshClassCopyWithImpl<T, $Res>
    extends _$FreshClassCopyWithImpl<T, $Res>
    implements _$$_FreshClassCopyWith<T, $Res> {
  __$$_FreshClassCopyWithImpl(
      _$_FreshClass<T> _value, $Res Function(_$_FreshClass<T>) _then)
      : super(_value, (v) => _then(v as _$_FreshClass<T>));

  @override
  _$_FreshClass<T> get _value => super._value as _$_FreshClass<T>;

  @override
  $Res call({
    Object? isFresh = freezed,
    Object? entity = freezed,
    Object? isNextPagePresent = freezed,
  }) {
    return _then(_$_FreshClass<T>(
      isFresh: isFresh == freezed
          ? _value.isFresh
          : isFresh // ignore: cast_nullable_to_non_nullable
              as bool,
      entity: entity == freezed
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as T,
      isNextPagePresent: isNextPagePresent == freezed
          ? _value.isNextPagePresent
          : isNextPagePresent // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_FreshClass<T> extends _FreshClass<T> {
  const _$_FreshClass(
      {required this.isFresh, required this.entity, this.isNextPagePresent})
      : super._();

  @override
  final bool isFresh;
  @override
  final T entity;
  @override
  final bool? isNextPagePresent;

  @override
  String toString() {
    return 'FreshClass<$T>(isFresh: $isFresh, entity: $entity, isNextPagePresent: $isNextPagePresent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FreshClass<T> &&
            const DeepCollectionEquality().equals(other.isFresh, isFresh) &&
            const DeepCollectionEquality().equals(other.entity, entity) &&
            const DeepCollectionEquality()
                .equals(other.isNextPagePresent, isNextPagePresent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isFresh),
      const DeepCollectionEquality().hash(entity),
      const DeepCollectionEquality().hash(isNextPagePresent));

  @JsonKey(ignore: true)
  @override
  _$$_FreshClassCopyWith<T, _$_FreshClass<T>> get copyWith =>
      __$$_FreshClassCopyWithImpl<T, _$_FreshClass<T>>(this, _$identity);
}

abstract class _FreshClass<T> extends FreshClass<T> {
  const factory _FreshClass(
      {required final bool isFresh,
      required final T entity,
      final bool? isNextPagePresent}) = _$_FreshClass<T>;
  const _FreshClass._() : super._();

  @override
  bool get isFresh => throw _privateConstructorUsedError;
  @override
  T get entity => throw _privateConstructorUsedError;
  @override
  bool? get isNextPagePresent => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FreshClassCopyWith<T, _$_FreshClass<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
