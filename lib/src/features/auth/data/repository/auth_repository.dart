import 'package:flutter_absensi_app/main.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_absensi_app/src/features/auth/data/datasource/remote_datasource.dart';
import 'package:flutter_absensi_app/src/features/auth/data/model/user_model.dart';
import 'package:objectbox/objectbox.dart';
import 'package:dartz/dartz.dart';

import '../../domain/entities/user_entity.dart';
import '../datasource/local_datasource.dart';

abstract class AuthRepository {
  Future<Either<Exception, UserModel>> login(String email, String password);
  Future<Either<Exception, String>> logout();
}

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSourceImpl remoteDataSource =
      AuthRemoteDataSourceImpl(client: http.Client());
  final AuthLocalDataSourceImpl authLocalDataSource = AuthLocalDataSourceImpl();
  final Box<UserEntity> userBox = store.box<UserEntity>();

  @override
  Future<Either<Exception, UserModel>> login(
      String email, String password) async {
    try {
      UserModel? user = await remoteDataSource.login(email, password);
      return right(user);
    } catch (e) {
      return left(Exception());
    }
  }

  @override
  Future<Either<Exception, String>> logout() async {
    try {
      UserEntity? data = await authLocalDataSource.getUser();
      await remoteDataSource.logout(data?.token);
      return right('Logout Sukses');
    } catch (e) {
      return left(Exception());
    }
  }
}
