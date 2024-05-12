import 'package:flutter/material.dart';
import 'package:flutter_absensi_app/main.dart';
import 'package:flutter_absensi_app/objectbox.g.dart';
import 'package:flutter_absensi_app/src/core/widget/snackbar.dart';
import 'package:flutter_absensi_app/src/features/auth/data/repository/auth_repository.dart';
import 'package:flutter_absensi_app/src/features/auth/domain/entities/user_entity.dart';
import 'package:flutter_absensi_app/src/features/auth/domain/usecase/auth_usecase.dart';
import 'package:flutter_absensi_app/src/features/auth/presentation/page/login_screen.dart';
import 'package:flutter_absensi_app/src/features/home/presentation/page/home_page.dart';
import 'package:go_router/go_router.dart';

class AuthUsecaseImpl implements AuthUseCase {
  AuthRepositoryImpl authRepository = AuthRepositoryImpl();
  final Box<UserEntity> userBox = store.box<UserEntity>();

  @override
  Future loginUser(String email, String password, BuildContext context) async {
    final result = await authRepository.login(
      email,
      password,
    );
    result.fold((l) {
      showSnackBar(context, 'Login Failed');
    }, (r) {
      UserEntity user = UserEntity(
        email: r.user?.email,
        role: r.user?.role,
        name: r.user?.name,
        token: r.token,
      );
      userBox.removeAll();
      userBox.put(user);
      context.pushNamed(HomeScreen.routerName);
    });
  }

  @override
  Future logout(BuildContext context) async {
    final result = await authRepository.logout();
    result.fold((l) => showSnackBar(context, 'Logout Failed'),
        (r) => context.pushNamed(LoginScreen.routerName));
  }
}
