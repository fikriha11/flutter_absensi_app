import 'package:flutter_absensi_app/main.dart';
import 'package:flutter_absensi_app/objectbox.g.dart';
import 'package:flutter_absensi_app/src/features/auth/domain/entities/user_entity.dart';

abstract class AuthLocalDataSource {
  Future<UserEntity?> getUser();
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final Box<UserEntity> userBox = store.box<UserEntity>();

  @override
  Future<UserEntity?> getUser() async {
    UserEntity? data = userBox.getAll().last;
    return data;
  }
}
