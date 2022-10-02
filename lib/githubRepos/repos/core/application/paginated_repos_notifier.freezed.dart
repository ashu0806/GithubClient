// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'paginated_repos_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaginatedRepoState {
  FreshClass<List<GithubRepo>> get repositories =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FreshClass<List<GithubRepo>> repositories)
        initial,
    required TResult Function(
            FreshClass<List<GithubRepo>> repositories, int reposPerPage)
        loading,
    required TResult Function(
            FreshClass<List<GithubRepo>> repositories, bool isNextPagePresent)
        loadSuccess,
    required TResult Function(
            FreshClass<List<GithubRepo>> repositories, RepoFailure failure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FreshClass<List<GithubRepo>> repositories)? initial,
    TResult Function(
            FreshClass<List<GithubRepo>> repositories, int reposPerPage)?
        loading,
    TResult Function(
            FreshClass<List<GithubRepo>> repositories, bool isNextPagePresent)?
        loadSuccess,
    TResult Function(
            FreshClass<List<GithubRepo>> repositories, RepoFailure failure)?
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FreshClass<List<GithubRepo>> repositories)? initial,
    TResult Function(
            FreshClass<List<GithubRepo>> repositories, int reposPerPage)?
        loading,
    TResult Function(
            FreshClass<List<GithubRepo>> repositories, bool isNextPagePresent)?
        loadSuccess,
    TResult Function(
            FreshClass<List<GithubRepo>> repositories, RepoFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginatedRepoStateCopyWith<PaginatedRepoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedRepoStateCopyWith<$Res> {
  factory $PaginatedRepoStateCopyWith(
          PaginatedRepoState value, $Res Function(PaginatedRepoState) then) =
      _$PaginatedRepoStateCopyWithImpl<$Res>;
  $Res call({FreshClass<List<GithubRepo>> repositories});

  $FreshClassCopyWith<List<GithubRepo>, $Res> get repositories;
}

/// @nodoc
class _$PaginatedRepoStateCopyWithImpl<$Res>
    implements $PaginatedRepoStateCopyWith<$Res> {
  _$PaginatedRepoStateCopyWithImpl(this._value, this._then);

  final PaginatedRepoState _value;
  // ignore: unused_field
  final $Res Function(PaginatedRepoState) _then;

  @override
  $Res call({
    Object? repositories = freezed,
  }) {
    return _then(_value.copyWith(
      repositories: repositories == freezed
          ? _value.repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as FreshClass<List<GithubRepo>>,
    ));
  }

  @override
  $FreshClassCopyWith<List<GithubRepo>, $Res> get repositories {
    return $FreshClassCopyWith<List<GithubRepo>, $Res>(_value.repositories,
        (value) {
      return _then(_value.copyWith(repositories: value));
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $PaginatedRepoStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call({FreshClass<List<GithubRepo>> repositories});

  @override
  $FreshClassCopyWith<List<GithubRepo>, $Res> get repositories;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PaginatedRepoStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? repositories = freezed,
  }) {
    return _then(_$_Initial(
      repositories == freezed
          ? _value.repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as FreshClass<List<GithubRepo>>,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial(this.repositories) : super._();

  @override
  final FreshClass<List<GithubRepo>> repositories;

  @override
  String toString() {
    return 'PaginatedRepoState.initial(repositories: $repositories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other.repositories, repositories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(repositories));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FreshClass<List<GithubRepo>> repositories)
        initial,
    required TResult Function(
            FreshClass<List<GithubRepo>> repositories, int reposPerPage)
        loading,
    required TResult Function(
            FreshClass<List<GithubRepo>> repositories, bool isNextPagePresent)
        loadSuccess,
    required TResult Function(
            FreshClass<List<GithubRepo>> repositories, RepoFailure failure)
        loadFailure,
  }) {
    return initial(repositories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FreshClass<List<GithubRepo>> repositories)? initial,
    TResult Function(
            FreshClass<List<GithubRepo>> repositories, int reposPerPage)?
        loading,
    TResult Function(
            FreshClass<List<GithubRepo>> repositories, bool isNextPagePresent)?
        loadSuccess,
    TResult Function(
            FreshClass<List<GithubRepo>> repositories, RepoFailure failure)?
        loadFailure,
  }) {
    return initial?.call(repositories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FreshClass<List<GithubRepo>> repositories)? initial,
    TResult Function(
            FreshClass<List<GithubRepo>> repositories, int reposPerPage)?
        loading,
    TResult Function(
            FreshClass<List<GithubRepo>> repositories, bool isNextPagePresent)?
        loadSuccess,
    TResult Function(
            FreshClass<List<GithubRepo>> repositories, RepoFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(repositories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends PaginatedRepoState {
  const factory _Initial(final FreshClass<List<GithubRepo>> repositories) =
      _$_Initial;
  const _Initial._() : super._();

  @override
  FreshClass<List<GithubRepo>> get repositories =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $PaginatedRepoStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  $Res call({FreshClass<List<GithubRepo>> repositories, int reposPerPage});

  @override
  $FreshClassCopyWith<List<GithubRepo>, $Res> get repositories;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$PaginatedRepoStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;

  @override
  $Res call({
    Object? repositories = freezed,
    Object? reposPerPage = freezed,
  }) {
    return _then(_$_Loading(
      repositories == freezed
          ? _value.repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as FreshClass<List<GithubRepo>>,
      reposPerPage == freezed
          ? _value.reposPerPage
          : reposPerPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading(this.repositories, this.reposPerPage) : super._();

  @override
  final FreshClass<List<GithubRepo>> repositories;
  @override
  final int reposPerPage;

  @override
  String toString() {
    return 'PaginatedRepoState.loading(repositories: $repositories, reposPerPage: $reposPerPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            const DeepCollectionEquality()
                .equals(other.repositories, repositories) &&
            const DeepCollectionEquality()
                .equals(other.reposPerPage, reposPerPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(repositories),
      const DeepCollectionEquality().hash(reposPerPage));

  @JsonKey(ignore: true)
  @override
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FreshClass<List<GithubRepo>> repositories)
        initial,
    required TResult Function(
            FreshClass<List<GithubRepo>> repositories, int reposPerPage)
        loading,
    required TResult Function(
            FreshClass<List<GithubRepo>> repositories, bool isNextPagePresent)
        loadSuccess,
    required TResult Function(
            FreshClass<List<GithubRepo>> repositories, RepoFailure failure)
        loadFailure,
  }) {
    return loading(repositories, reposPerPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FreshClass<List<GithubRepo>> repositories)? initial,
    TResult Function(
            FreshClass<List<GithubRepo>> repositories, int reposPerPage)?
        loading,
    TResult Function(
            FreshClass<List<GithubRepo>> repositories, bool isNextPagePresent)?
        loadSuccess,
    TResult Function(
            FreshClass<List<GithubRepo>> repositories, RepoFailure failure)?
        loadFailure,
  }) {
    return loading?.call(repositories, reposPerPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FreshClass<List<GithubRepo>> repositories)? initial,
    TResult Function(
            FreshClass<List<GithubRepo>> repositories, int reposPerPage)?
        loading,
    TResult Function(
            FreshClass<List<GithubRepo>> repositories, bool isNextPagePresent)?
        loadSuccess,
    TResult Function(
            FreshClass<List<GithubRepo>> repositories, RepoFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(repositories, reposPerPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends PaginatedRepoState {
  const factory _Loading(final FreshClass<List<GithubRepo>> repositories,
      final int reposPerPage) = _$_Loading;
  const _Loading._() : super._();

  @override
  FreshClass<List<GithubRepo>> get repositories =>
      throw _privateConstructorUsedError;
  int get reposPerPage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res>
    implements $PaginatedRepoStateCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @override
  $Res call(
      {FreshClass<List<GithubRepo>> repositories, bool isNextPagePresent});

  @override
  $FreshClassCopyWith<List<GithubRepo>, $Res> get repositories;
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$PaginatedRepoStateCopyWithImpl<$Res>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _$_LoadSuccess));

  @override
  _$_LoadSuccess get _value => super._value as _$_LoadSuccess;

  @override
  $Res call({
    Object? repositories = freezed,
    Object? isNextPagePresent = freezed,
  }) {
    return _then(_$_LoadSuccess(
      repositories == freezed
          ? _value.repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as FreshClass<List<GithubRepo>>,
      isNextPagePresent: isNextPagePresent == freezed
          ? _value.isNextPagePresent
          : isNextPagePresent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess extends _LoadSuccess {
  const _$_LoadSuccess(this.repositories, {required this.isNextPagePresent})
      : super._();

  @override
  final FreshClass<List<GithubRepo>> repositories;
  @override
  final bool isNextPagePresent;

  @override
  String toString() {
    return 'PaginatedRepoState.loadSuccess(repositories: $repositories, isNextPagePresent: $isNextPagePresent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality()
                .equals(other.repositories, repositories) &&
            const DeepCollectionEquality()
                .equals(other.isNextPagePresent, isNextPagePresent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(repositories),
      const DeepCollectionEquality().hash(isNextPagePresent));

  @JsonKey(ignore: true)
  @override
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FreshClass<List<GithubRepo>> repositories)
        initial,
    required TResult Function(
            FreshClass<List<GithubRepo>> repositories, int reposPerPage)
        loading,
    required TResult Function(
            FreshClass<List<GithubRepo>> repositories, bool isNextPagePresent)
        loadSuccess,
    required TResult Function(
            FreshClass<List<GithubRepo>> repositories, RepoFailure failure)
        loadFailure,
  }) {
    return loadSuccess(repositories, isNextPagePresent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FreshClass<List<GithubRepo>> repositories)? initial,
    TResult Function(
            FreshClass<List<GithubRepo>> repositories, int reposPerPage)?
        loading,
    TResult Function(
            FreshClass<List<GithubRepo>> repositories, bool isNextPagePresent)?
        loadSuccess,
    TResult Function(
            FreshClass<List<GithubRepo>> repositories, RepoFailure failure)?
        loadFailure,
  }) {
    return loadSuccess?.call(repositories, isNextPagePresent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FreshClass<List<GithubRepo>> repositories)? initial,
    TResult Function(
            FreshClass<List<GithubRepo>> repositories, int reposPerPage)?
        loading,
    TResult Function(
            FreshClass<List<GithubRepo>> repositories, bool isNextPagePresent)?
        loadSuccess,
    TResult Function(
            FreshClass<List<GithubRepo>> repositories, RepoFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(repositories, isNextPagePresent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess extends PaginatedRepoState {
  const factory _LoadSuccess(final FreshClass<List<GithubRepo>> repositories,
      {required final bool isNextPagePresent}) = _$_LoadSuccess;
  const _LoadSuccess._() : super._();

  @override
  FreshClass<List<GithubRepo>> get repositories =>
      throw _privateConstructorUsedError;
  bool get isNextPagePresent => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res>
    implements $PaginatedRepoStateCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  @override
  $Res call({FreshClass<List<GithubRepo>> repositories, RepoFailure failure});

  @override
  $FreshClassCopyWith<List<GithubRepo>, $Res> get repositories;
  $RepoFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$PaginatedRepoStateCopyWithImpl<$Res>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, (v) => _then(v as _$_LoadFailure));

  @override
  _$_LoadFailure get _value => super._value as _$_LoadFailure;

  @override
  $Res call({
    Object? repositories = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_LoadFailure(
      repositories == freezed
          ? _value.repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as FreshClass<List<GithubRepo>>,
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as RepoFailure,
    ));
  }

  @override
  $RepoFailureCopyWith<$Res> get failure {
    return $RepoFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure extends _LoadFailure {
  const _$_LoadFailure(this.repositories, this.failure) : super._();

  @override
  final FreshClass<List<GithubRepo>> repositories;
  @override
  final RepoFailure failure;

  @override
  String toString() {
    return 'PaginatedRepoState.loadFailure(repositories: $repositories, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            const DeepCollectionEquality()
                .equals(other.repositories, repositories) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(repositories),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FreshClass<List<GithubRepo>> repositories)
        initial,
    required TResult Function(
            FreshClass<List<GithubRepo>> repositories, int reposPerPage)
        loading,
    required TResult Function(
            FreshClass<List<GithubRepo>> repositories, bool isNextPagePresent)
        loadSuccess,
    required TResult Function(
            FreshClass<List<GithubRepo>> repositories, RepoFailure failure)
        loadFailure,
  }) {
    return loadFailure(repositories, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FreshClass<List<GithubRepo>> repositories)? initial,
    TResult Function(
            FreshClass<List<GithubRepo>> repositories, int reposPerPage)?
        loading,
    TResult Function(
            FreshClass<List<GithubRepo>> repositories, bool isNextPagePresent)?
        loadSuccess,
    TResult Function(
            FreshClass<List<GithubRepo>> repositories, RepoFailure failure)?
        loadFailure,
  }) {
    return loadFailure?.call(repositories, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FreshClass<List<GithubRepo>> repositories)? initial,
    TResult Function(
            FreshClass<List<GithubRepo>> repositories, int reposPerPage)?
        loading,
    TResult Function(
            FreshClass<List<GithubRepo>> repositories, bool isNextPagePresent)?
        loadSuccess,
    TResult Function(
            FreshClass<List<GithubRepo>> repositories, RepoFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(repositories, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure extends PaginatedRepoState {
  const factory _LoadFailure(final FreshClass<List<GithubRepo>> repositories,
      final RepoFailure failure) = _$_LoadFailure;
  const _LoadFailure._() : super._();

  @override
  FreshClass<List<GithubRepo>> get repositories =>
      throw _privateConstructorUsedError;
  RepoFailure get failure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
