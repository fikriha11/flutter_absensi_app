import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_absensi_app/main.dart';
import 'package:flutter_absensi_app/objectbox.g.dart';
import 'package:flutter_absensi_app/src/core/assets/assets.gen.dart';
import 'package:flutter_absensi_app/src/core/widget/snackbar.dart';
import 'package:flutter_absensi_app/src/features/auth/application/auth_usecase_impl.dart';
import 'package:flutter_absensi_app/src/features/auth/data/model/user_model.dart';
import 'package:flutter_absensi_app/src/features/auth/data/repository/auth_repository.dart';
import 'package:flutter_absensi_app/src/features/auth/domain/entities/user_entity.dart';
import 'package:flutter_absensi_app/src/features/home/presentation/page/home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common/colors.dart';
import '../../../../common/space.dart';
import '../../../../core/assets/buttons.dart';
import '../riverpod/toogle_password.dart';
import '../widget/custom_text_field.dart';

class LoginScreen extends ConsumerWidget {
  LoginScreen({super.key});
  static const String routerName = "login-screen";

  final AuthUsecaseImpl authUsecase = AuthUsecaseImpl();
  final AuthRepositoryImpl authRepositoryImpl = AuthRepositoryImpl();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tooglePassword = ref.watch(tooglePasswordNotifier);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SpaceHeight(50),
              Image.asset(
                Assets.images.logo.path,
                width: MediaQuery.of(context).size.width,
                height: 100,
              ),
              const SpaceHeight(107),
              CustomTextField(
                controller: emailController,
                label: 'Email Address',
                showLabel: false,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    Assets.icons.email.path,
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              const SpaceHeight(20),
              CustomTextField(
                controller: passwordController,
                label: 'Password',
                showLabel: false,
                obscureText: tooglePassword,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    Assets.icons.password.path,
                    height: 20,
                    width: 20,
                  ),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    tooglePassword ? Icons.visibility : Icons.visibility_off,
                    color: AppColors.grey,
                  ),
                  onPressed: () {
                    ref.read(tooglePasswordNotifier.notifier).toogle();
                  },
                ),
              ),
              const SpaceHeight(104),
              Button.filled(
                onPressed: () async {
                  await authUsecase.loginUser(
                      emailController.text, passwordController.text, context);
                },
                label: 'Sign In',
              )
            ],
          ),
        ),
      ),
    );
  }
}
