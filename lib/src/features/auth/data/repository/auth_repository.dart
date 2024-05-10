import 'package:http/http.dart' as http;
import 'package:flutter_absensi_app/src/features/auth/data/datasource/remote_datasource.dart';
import 'package:flutter_absensi_app/src/features/auth/data/model/user_model.dart';

abstract class AuthRepository {
  Future<UserModel> login(String email, String password);
  Future<bool> logout(String token);
}

class AuthRepositoryImpl implements AuthRepository {
  final LoginRemoteDataSourceImpl remoteDataSource =
      LoginRemoteDataSourceImpl(client: http.Client());

  @override
  Future<UserModel> login(String email, String password) async {
    UserModel user = await remoteDataSource.login(email, password);
    return user;
  }

  @override
  Future<bool> logout(String token) async {
    return await remoteDataSource.logout(token);
  }
}
