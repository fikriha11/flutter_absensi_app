import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    User? user,
    String? token,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class User with _$User {
  const factory User(
    int? id,
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
    dynamic imageUrl,
  ) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
