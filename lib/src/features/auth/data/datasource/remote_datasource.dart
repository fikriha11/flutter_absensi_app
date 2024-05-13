import 'dart:convert';
import 'package:flutter_absensi_app/src/core/error/exception.dart';
import 'package:flutter_absensi_app/src/features/auth/data/model/user_model.dart';
import 'package:http/http.dart' as http;

abstract class AuthRemoteDataSource {
  Future<UserModel> login(String username, String password);
  Future logout(String token);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final http.Client client;
  AuthRemoteDataSourceImpl({required this.client});
  @override
  Future<UserModel> login(String email, String password) async {
    Uri url = Uri.parse('http://192.168.1.104:8000/api/login');
    var response = await client.post(url, body: {
      "email": email,
      "password": password,
    });

    if (response.statusCode == 200) {
      Map<String, dynamic> dataBody = json.decode(response.body);
      UserModel data = UserModel.fromJson(dataBody);
      return data;
    } else if (response.statusCode == 401) {
      throw const StatusCodeException(message: "Invalid Credential");
    } else {
      throw const GeneralExeption(message: "Server Error");
    }
  }

  @override
  Future<bool> logout(String? token) async {
    Uri url = Uri.parse('http://192.168.1.104:8000/api/logout');
    var response = await client.post(url, headers: {
      "Accept": "application/json",
      "Authorization": "Bearer ${token ?? ""}"
    });
    if (response.statusCode == 200) {
      return true;
    } else if (response.statusCode == 401) {
      throw const StatusCodeException(message: "Unauthenticated");
    } else {
      throw const GeneralExeption(message: "Server Error");
    }
  }
}
