// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'github_repo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GithubRepo {
  User get ownerDetails => throw _privateConstructorUsedError;
  String get repoName => throw _privateConstructorUsedError;
  String get repoDesc => throw _privateConstructorUsedError;
  int get stargazerCounts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubRepoCopyWith<GithubRepo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubRepoCopyWith<$Res> {
  factory $GithubRepoCopyWith(
          GithubRepo value, $Res Function(GithubRepo) then) =
      _$GithubRepoCopyWithImpl<$Res>;
  $Res call(
      {User ownerDetails,
      String repoName,
      String repoDesc,
      int stargazerCounts});

  $UserCopyWith<$Res> get ownerDetails;
}

/// @nodoc
class _$GithubRepoCopyWithImpl<$Res> implements $GithubRepoCopyWith<$Res> {
  _$GithubRepoCopyWithImpl(this._value, this._then);

  final GithubRepo _value;
  // ignore: unused_field
  final $Res Function(GithubRepo) _then;

  @override
  $Res call({
    Object? ownerDetails = freezed,
    Object? repoName = freezed,
    Object? repoDesc = freezed,
    Object? stargazerCounts = freezed,
  }) {
    return _then(_value.copyWith(
      ownerDetails: ownerDetails == freezed
          ? _value.ownerDetails
          : ownerDetails // ignore: cast_nullable_to_non_nullable
              as User,
      repoName: repoName == freezed
          ? _value.repoName
          : repoName // ignore: cast_nullable_to_non_nullable
              as String,
      repoDesc: repoDesc == freezed
          ? _value.repoDesc
          : repoDesc // ignore: cast_nullable_to_non_nullable
              as String,
      stargazerCounts: stargazerCounts == freezed
          ? _value.stargazerCounts
          : stargazerCounts // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $UserCopyWith<$Res> get ownerDetails {
    return $UserCopyWith<$Res>(_value.ownerDetails, (value) {
      return _then(_value.copyWith(ownerDetails: value));
    });
  }
}

/// @nodoc
abstract class _$$_GithubRepoCopyWith<$Res>
    implements $GithubRepoCopyWith<$Res> {
  factory _$$_GithubRepoCopyWith(
          _$_GithubRepo value, $Res Function(_$_GithubRepo) then) =
      __$$_GithubRepoCopyWithImpl<$Res>;
  @override
  $Res call(
      {User ownerDetails,
      String repoName,
      String repoDesc,
      int stargazerCounts});

  @override
  $UserCopyWith<$Res> get ownerDetails;
}

/// @nodoc
class __$$_GithubRepoCopyWithImpl<$Res> extends _$GithubRepoCopyWithImpl<$Res>
    implements _$$_GithubRepoCopyWith<$Res> {
  __$$_GithubRepoCopyWithImpl(
      _$_GithubRepo _value, $Res Function(_$_GithubRepo) _then)
      : super(_value, (v) => _then(v as _$_GithubRepo));

  @override
  _$_GithubRepo get _value => super._value as _$_GithubRepo;

  @override
  $Res call({
    Object? ownerDetails = freezed,
    Object? repoName = freezed,
    Object? repoDesc = freezed,
    Object? stargazerCounts = freezed,
  }) {
    return _then(_$_GithubRepo(
      ownerDetails: ownerDetails == freezed
          ? _value.ownerDetails
          : ownerDetails // ignore: cast_nullable_to_non_nullable
              as User,
      repoName: repoName == freezed
          ? _value.repoName
          : repoName // ignore: cast_nullable_to_non_nullable
              as String,
      repoDesc: repoDesc == freezed
          ? _value.repoDesc
          : repoDesc // ignore: cast_nullable_to_non_nullable
              as String,
      stargazerCounts: stargazerCounts == freezed
          ? _value.stargazerCounts
          : stargazerCounts // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GithubRepo extends _GithubRepo {
  const _$_GithubRepo(
      {required this.ownerDetails,
      required this.repoName,
      required this.repoDesc,
      required this.stargazerCounts})
      : super._();

  @override
  final User ownerDetails;
  @override
  final String repoName;
  @override
  final String repoDesc;
  @override
  final int stargazerCounts;

  @override
  String toString() {
    return 'GithubRepo(ownerDetails: $ownerDetails, repoName: $repoName, repoDesc: $repoDesc, stargazerCounts: $stargazerCounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GithubRepo &&
            const DeepCollectionEquality()
                .equals(other.ownerDetails, ownerDetails) &&
            const DeepCollectionEquality().equals(other.repoName, repoName) &&
            const DeepCollectionEquality().equals(other.repoDesc, repoDesc) &&
            const DeepCollectionEquality()
                .equals(other.stargazerCounts, stargazerCounts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ownerDetails),
      const DeepCollectionEquality().hash(repoName),
      const DeepCollectionEquality().hash(repoDesc),
      const DeepCollectionEquality().hash(stargazerCounts));

  @JsonKey(ignore: true)
  @override
  _$$_GithubRepoCopyWith<_$_GithubRepo> get copyWith =>
      __$$_GithubRepoCopyWithImpl<_$_GithubRepo>(this, _$identity);
}

abstract class _GithubRepo extends GithubRepo {
  const factory _GithubRepo(
      {required final User ownerDetails,
      required final String repoName,
      required final String repoDesc,
      required final int stargazerCounts}) = _$_GithubRepo;
  const _GithubRepo._() : super._();

  @override
  User get ownerDetails => throw _privateConstructorUsedError;
  @override
  String get repoName => throw _privateConstructorUsedError;
  @override
  String get repoDesc => throw _privateConstructorUsedError;
  @override
  int get stargazerCounts => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GithubRepoCopyWith<_$_GithubRepo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$User {
  String get name => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call({String name, String avatarUrl});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  $Res call({String name, String avatarUrl});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, (v) => _then(v as _$_User));

  @override
  _$_User get _value => super._value as _$_User;

  @override
  $Res call({
    Object? name = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_$_User(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_User extends _User {
  const _$_User({required this.name, required this.avatarUrl}) : super._();

  @override
  final String name;
  @override
  final String avatarUrl;

  @override
  String toString() {
    return 'User(name: $name, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.avatarUrl, avatarUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(avatarUrl));

  @JsonKey(ignore: true)
  @override
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);
}

abstract class _User extends User {
  const factory _User(
      {required final String name, required final String avatarUrl}) = _$_User;
  const _User._() : super._();

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get avatarUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
