import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:flutter_absensi_app/src/core/extensions/build_context_ext.dart';
import 'package:flutter_absensi_app/src/features/auth/presentation/page/login_screen.dart';
import 'package:flutter_absensi_app/src/features/home/presentation/page/home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/colors.dart';
import '../../../../common/space.dart';
import '../../../../core/assets/assets.gen.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({super.key});
  static const String routerName = "attendance-page";

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  List<CameraDescription>? _availableCameras;
  CameraController? _controller;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  void _initializeCamera() async {
    _availableCameras = await availableCameras();
    _initCamera(_availableCameras!.first);
  }

  void _initCamera(CameraDescription description) async {
    _controller = CameraController(description, ResolutionPreset.max);
    await _controller!.initialize();
    if (!mounted) {
      return;
    }
    setState(() {});
  }

  void _takePicture() async {
    await _controller!.takePicture();
    if (mounted) {
      context.pushReplacementNamed(HomeScreen.routerName);
    }
  }

  void _reverseCamera() {
    final lensDirection = _controller!.description.lensDirection;
    CameraDescription newDescription;
    if (lensDirection == CameraLensDirection.front) {
      newDescription = _availableCameras!.firstWhere((description) =>
          description.lensDirection == CameraLensDirection.back);
    } else {
      newDescription = _availableCameras!.firstWhere((description) =>
          description.lensDirection == CameraLensDirection.front);
    }
    _initCamera(newDescription);
  }

  @override
  Widget build(BuildContext context) {
    if (_controller == null) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }
    return Scaffold(
      body: Stack(
        children: [
          AspectRatio(
            aspectRatio: context.deviceWidth / context.deviceHeight,
            child: CameraPreview(_controller!),
          ),
          Padding(
            padding: EdgeInsets.all(40.0.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(16.0.sp),
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.47),
                    borderRadius: BorderRadius.circular(10.0.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Abesensi Datang',
                            style: TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'Kantor',
                            style: TextStyle(
                              color: AppColors.white,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Assets.images.seeLocation.image(height: 30.0.h),
                      ),
                    ],
                  ),
                ),
                SpaceHeight(30.0.h),
                Row(
                  children: [
                    IconButton(
                      onPressed: _reverseCamera,
                      icon: Assets.icons.reverse.svg(width: 48.0.w),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: _takePicture,
                      icon: Icon(
                        Icons.circle,
                        size: 70.0.sp,
                      ),
                      color: AppColors.red,
                    ),
                    const Spacer(),
                    SpaceWidth(48.0.w)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
