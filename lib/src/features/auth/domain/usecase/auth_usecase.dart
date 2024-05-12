import 'package:flutter/material.dart';

abstract class AuthUseCase {
  Future loginUser(String email, String password, BuildContext context);
  Future logout(BuildContext context);
}
