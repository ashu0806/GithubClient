// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'repodto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RepoDTO _$RepoDTOFromJson(Map<String, dynamic> json) {
  return _RepoDTO.fromJson(json);
}

/// @nodoc
mixin _$RepoDTO {
  @JsonKey(name: 'owner')
  UserDTO get ownerDetails => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get repoName => throw _privateConstructorUsedError;
  @JsonKey(name: 'description', fromJson: _descFromJson)
  String get repoDesc => throw _privateConstructorUsedError;
  @JsonKey(name: 'stargazers_count')
  int get stargazerCounts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepoDTOCopyWith<RepoDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoDTOCopyWith<$Res> {
  factory $RepoDTOCopyWith(RepoDTO value, $Res Function(RepoDTO) then) =
      _$RepoDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'owner') UserDTO ownerDetails,
      @JsonKey(name: 'name') String repoName,
      @JsonKey(name: 'description', fromJson: _descFromJson) String repoDesc,
      @JsonKey(name: 'stargazers_count') int stargazerCounts});

  $UserDTOCopyWith<$Res> get ownerDetails;
}

/// @nodoc
class _$RepoDTOCopyWithImpl<$Res> implements $RepoDTOCopyWith<$Res> {
  _$RepoDTOCopyWithImpl(this._value, this._then);

  final RepoDTO _value;
  // ignore: unused_field
  final $Res Function(RepoDTO) _then;

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
              as UserDTO,
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
  $UserDTOCopyWith<$Res> get ownerDetails {
    return $UserDTOCopyWith<$Res>(_value.ownerDetails, (value) {
      return _then(_value.copyWith(ownerDetails: value));
    });
  }
}

/// @nodoc
abstract class _$$_RepoDTOCopyWith<$Res> implements $RepoDTOCopyWith<$Res> {
  factory _$$_RepoDTOCopyWith(
          _$_RepoDTO value, $Res Function(_$_RepoDTO) then) =
      __$$_RepoDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'owner') UserDTO ownerDetails,
      @JsonKey(name: 'name') String repoName,
      @JsonKey(name: 'description', fromJson: _descFromJson) String repoDesc,
      @JsonKey(name: 'stargazers_count') int stargazerCounts});

  @override
  $UserDTOCopyWith<$Res> get ownerDetails;
}

/// @nodoc
class __$$_RepoDTOCopyWithImpl<$Res> extends _$RepoDTOCopyWithImpl<$Res>
    implements _$$_RepoDTOCopyWith<$Res> {
  __$$_RepoDTOCopyWithImpl(_$_RepoDTO _value, $Res Function(_$_RepoDTO) _then)
      : super(_value, (v) => _then(v as _$_RepoDTO));

  @override
  _$_RepoDTO get _value => super._value as _$_RepoDTO;

  @override
  $Res call({
    Object? ownerDetails = freezed,
    Object? repoName = freezed,
    Object? repoDesc = freezed,
    Object? stargazerCounts = freezed,
  }) {
    return _then(_$_RepoDTO(
      ownerDetails: ownerDetails == freezed
          ? _value.ownerDetails
          : ownerDetails // ignore: cast_nullable_to_non_nullable
              as UserDTO,
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
@JsonSerializable()
class _$_RepoDTO extends _RepoDTO {
  const _$_RepoDTO(
      {@JsonKey(name: 'owner')
          required this.ownerDetails,
      @JsonKey(name: 'name')
          required this.repoName,
      @JsonKey(name: 'description', fromJson: _descFromJson)
          required this.repoDesc,
      @JsonKey(name: 'stargazers_count')
          required this.stargazerCounts})
      : super._();

  factory _$_RepoDTO.fromJson(Map<String, dynamic> json) =>
      _$$_RepoDTOFromJson(json);

  @override
  @JsonKey(name: 'owner')
  final UserDTO ownerDetails;
  @override
  @JsonKey(name: 'name')
  final String repoName;
  @override
  @JsonKey(name: 'description', fromJson: _descFromJson)
  final String repoDesc;
  @override
  @JsonKey(name: 'stargazers_count')
  final int stargazerCounts;

  @override
  String toString() {
    return 'RepoDTO(ownerDetails: $ownerDetails, repoName: $repoName, repoDesc: $repoDesc, stargazerCounts: $stargazerCounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RepoDTO &&
            const DeepCollectionEquality()
                .equals(other.ownerDetails, ownerDetails) &&
            const DeepCollectionEquality().equals(other.repoName, repoName) &&
            const DeepCollectionEquality().equals(other.repoDesc, repoDesc) &&
            const DeepCollectionEquality()
                .equals(other.stargazerCounts, stargazerCounts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ownerDetails),
      const DeepCollectionEquality().hash(repoName),
      const DeepCollectionEquality().hash(repoDesc),
      const DeepCollectionEquality().hash(stargazerCounts));

  @JsonKey(ignore: true)
  @override
  _$$_RepoDTOCopyWith<_$_RepoDTO> get copyWith =>
      __$$_RepoDTOCopyWithImpl<_$_RepoDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RepoDTOToJson(this);
  }
}

abstract class _RepoDTO extends RepoDTO {
  const factory _RepoDTO(
      {@JsonKey(name: 'owner')
          required final UserDTO ownerDetails,
      @JsonKey(name: 'name')
          required final String repoName,
      @JsonKey(name: 'description', fromJson: _descFromJson)
          required final String repoDesc,
      @JsonKey(name: 'stargazers_count')
          required final int stargazerCounts}) = _$_RepoDTO;
  const _RepoDTO._() : super._();

  factory _RepoDTO.fromJson(Map<String, dynamic> json) = _$_RepoDTO.fromJson;

  @override
  @JsonKey(name: 'owner')
  UserDTO get ownerDetails => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name')
  String get repoName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'description', fromJson: _descFromJson)
  String get repoDesc => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'stargazers_count')
  int get stargazerCounts => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RepoDTOCopyWith<_$_RepoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
