import 'package:flutter_absensi_app/main.dart';
import 'package:flutter_absensi_app/objectbox.g.dart';

import '../../features/auth/domain/entities/user_entity.dart';

abstract class LocalDataSource {
  UserEntity? getUser();
}

class LocalDataSourceImpl implements LocalDataSource {
  final Box<UserEntity> userBox = store.box<UserEntity>();

  @override
  UserEntity? getUser() {
    UserEntity? data = userBox.getAll().last;
    return data;
  }
}
