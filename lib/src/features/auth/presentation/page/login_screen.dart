import 'package:flutter/material.dart';
import 'package:flutter_absensi_app/src/features/home/presentation/page/home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const String routerName = "login-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('LOGIN SCREEN'),
            SizedBox(height: 20.h),
            ElevatedButton(
                onPressed: () {
                  context.pushNamed(HomeScreen.routerName);
                },
                child: const Text('GO HOME'))
          ],
        ),
      ),
    );
  }
}
