import 'package:objectbox/objectbox.dart';

@Entity()
class UserEntity {
  int id;
  int? idUser;
  String? name;
  String? email;
  String? role;
  String? faceEmbedding;
  String? imgUrl;
  String? token;

  UserEntity({
    this.id = 0,
    this.idUser,
    this.name,
    this.email,
    this.role,
    this.faceEmbedding,
    this.imgUrl,
    this.token,
  });
}
