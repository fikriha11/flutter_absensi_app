// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      json['token'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      (json['id'] as num?)?.toInt(),
      json['name'] as String?,
      json['email'] as String?,
      json['emailVerifiedAt'] as String?,
      json['twoFactorSecret'],
      json['twoFactorRecoveryCodes'],
      json['twoFactorConfirmedAt'],
      json['createdAt'] as String?,
      json['updatedAt'] as String?,
      json['phone'],
      json['role'] as String?,
      json['position'],
      json['department'],
      json['faceEmbedding'],
      json['imageUrl'],
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'emailVerifiedAt': instance.emailVerifiedAt,
      'twoFactorSecret': instance.twoFactorSecret,
      'twoFactorRecoveryCodes': instance.twoFactorRecoveryCodes,
      'twoFactorConfirmedAt': instance.twoFactorConfirmedAt,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'phone': instance.phone,
      'role': instance.role,
      'position': instance.position,
      'department': instance.department,
      'faceEmbedding': instance.faceEmbedding,
      'imageUrl': instance.imageUrl,
    };
