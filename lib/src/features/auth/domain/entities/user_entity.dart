import 'package:objectbox/objectbox.dart';

@Entity()
class UserEntity {
  int id;
  String? email;
  String? name;
  String? role;
  String? token;

  UserEntity({
    this.id = 0,
    this.email,
    this.role,
    this.name,
    this.token,
  });
}
