import 'package:flutter/material.dart';
import 'package:flutter_absensi_app/src/features/auth/application/auth_usecase_impl.dart';
import 'package:flutter_absensi_app/src/features/auth/domain/usecase/auth_usecase.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  static const String routerName = "profile-screen";
  final AuthUsecaseImpl authUsecaseImpl = AuthUsecaseImpl();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          authUsecaseImpl.logout(context);
        },
        child: const Text('LOGOUT'),
      ),
    );
  }
}
