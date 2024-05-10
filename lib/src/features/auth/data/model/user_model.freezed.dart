// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  User? get user => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call({User? user, String? token});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user, String? token});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? token = freezed,
  }) {
    return _then(_$UserModelImpl(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(this.user, this.token);

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final User? user;
  @override
  final String? token;

  @override
  String toString() {
    return 'UserModel(user: $user, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(final User? user, final String? token) =
      _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  User? get user;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get emailVerifiedAt => throw _privateConstructorUsedError;
  dynamic get twoFactorSecret => throw _privateConstructorUsedError;
  dynamic get twoFactorRecoveryCodes => throw _privateConstructorUsedError;
  dynamic get twoFactorConfirmedAt => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  dynamic get phone => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  dynamic get position => throw _privateConstructorUsedError;
  dynamic get department => throw _privateConstructorUsedError;
  dynamic get faceEmbedding => throw _privateConstructorUsedError;
  dynamic get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? email,
      String? emailVerifiedAt,
      dynamic twoFactorSecret,
      dynamic twoFactorRecoveryCodes,
      dynamic twoFactorConfirmedAt,
      String? createdAt,
      String? updatedAt,
      dynamic phone,
      String? role,
      dynamic position,
      dynamic department,
      dynamic faceEmbedding,
      dynamic imageUrl});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? twoFactorSecret = freezed,
    Object? twoFactorRecoveryCodes = freezed,
    Object? twoFactorConfirmedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? phone = freezed,
    Object? role = freezed,
    Object? position = freezed,
    Object? department = freezed,
    Object? faceEmbedding = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      twoFactorSecret: freezed == twoFactorSecret
          ? _value.twoFactorSecret
          : twoFactorSecret // ignore: cast_nullable_to_non_nullable
              as dynamic,
      twoFactorRecoveryCodes: freezed == twoFactorRecoveryCodes
          ? _value.twoFactorRecoveryCodes
          : twoFactorRecoveryCodes // ignore: cast_nullable_to_non_nullable
              as dynamic,
      twoFactorConfirmedAt: freezed == twoFactorConfirmedAt
          ? _value.twoFactorConfirmedAt
          : twoFactorConfirmedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as dynamic,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as dynamic,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as dynamic,
      faceEmbedding: freezed == faceEmbedding
          ? _value.faceEmbedding
          : faceEmbedding // ignore: cast_nullable_to_non_nullable
              as dynamic,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? email,
      String? emailVerifiedAt,
      dynamic twoFactorSecret,
      dynamic twoFactorRecoveryCodes,
      dynamic twoFactorConfirmedAt,
      String? createdAt,
      String? updatedAt,
      dynamic phone,
      String? role,
      dynamic position,
      dynamic department,
      dynamic faceEmbedding,
      dynamic imageUrl});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? twoFactorSecret = freezed,
    Object? twoFactorRecoveryCodes = freezed,
    Object? twoFactorConfirmedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? phone = freezed,
    Object? role = freezed,
    Object? position = freezed,
    Object? department = freezed,
    Object? faceEmbedding = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$UserImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == twoFactorSecret
          ? _value.twoFactorSecret
          : twoFactorSecret // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == twoFactorRecoveryCodes
          ? _value.twoFactorRecoveryCodes
          : twoFactorRecoveryCodes // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == twoFactorConfirmedAt
          ? _value.twoFactorConfirmedAt
          : twoFactorConfirmedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == faceEmbedding
          ? _value.faceEmbedding
          : faceEmbedding // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      this.id,
      this.name,
      this.email,
      this.emailVerifiedAt,
      this.twoFactorSecret,
      this.twoFactorRecoveryCodes,
      this.twoFactorConfirmedAt,
      this.createdAt,
      this.updatedAt,
      this.phone,
      this.role,
      this.position,
      this.department,
      this.faceEmbedding,
      this.imageUrl);

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? emailVerifiedAt;
  @override
  final dynamic twoFactorSecret;
  @override
  final dynamic twoFactorRecoveryCodes;
  @override
  final dynamic twoFactorConfirmedAt;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final dynamic phone;
  @override
  final String? role;
  @override
  final dynamic position;
  @override
  final dynamic department;
  @override
  final dynamic faceEmbedding;
  @override
  final dynamic imageUrl;

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, emailVerifiedAt: $emailVerifiedAt, twoFactorSecret: $twoFactorSecret, twoFactorRecoveryCodes: $twoFactorRecoveryCodes, twoFactorConfirmedAt: $twoFactorConfirmedAt, createdAt: $createdAt, updatedAt: $updatedAt, phone: $phone, role: $role, position: $position, department: $department, faceEmbedding: $faceEmbedding, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailVerifiedAt, emailVerifiedAt) ||
                other.emailVerifiedAt == emailVerifiedAt) &&
            const DeepCollectionEquality()
                .equals(other.twoFactorSecret, twoFactorSecret) &&
            const DeepCollectionEquality()
                .equals(other.twoFactorRecoveryCodes, twoFactorRecoveryCodes) &&
            const DeepCollectionEquality()
                .equals(other.twoFactorConfirmedAt, twoFactorConfirmedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality().equals(other.position, position) &&
            const DeepCollectionEquality()
                .equals(other.department, department) &&
            const DeepCollectionEquality()
                .equals(other.faceEmbedding, faceEmbedding) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      email,
      emailVerifiedAt,
      const DeepCollectionEquality().hash(twoFactorSecret),
      const DeepCollectionEquality().hash(twoFactorRecoveryCodes),
      const DeepCollectionEquality().hash(twoFactorConfirmedAt),
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(phone),
      role,
      const DeepCollectionEquality().hash(position),
      const DeepCollectionEquality().hash(department),
      const DeepCollectionEquality().hash(faceEmbedding),
      const DeepCollectionEquality().hash(imageUrl));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      final int? id,
      final String? name,
      final String? email,
      final String? emailVerifiedAt,
      final dynamic twoFactorSecret,
      final dynamic twoFactorRecoveryCodes,
      final dynamic twoFactorConfirmedAt,
      final String? createdAt,
      final String? updatedAt,
      final dynamic phone,
      final String? role,
      final dynamic position,
      final dynamic department,
      final dynamic faceEmbedding,
      final dynamic imageUrl) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get emailVerifiedAt;
  @override
  dynamic get twoFactorSecret;
  @override
  dynamic get twoFactorRecoveryCodes;
  @override
  dynamic get twoFactorConfirmedAt;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  dynamic get phone;
  @override
  String? get role;
  @override
  dynamic get position;
  @override
  dynamic get department;
  @override
  dynamic get faceEmbedding;
  @override
  dynamic get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
