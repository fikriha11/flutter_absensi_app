import 'package:flutter/material.dart';
import 'package:flutter_absensi_app/src/features/auth/presentation/page/login_screen.dart';
import 'package:flutter_absensi_app/src/features/history/presentation/pages/history_screen.dart';
import 'package:flutter_absensi_app/src/features/home/presentation/page/attendance_page.dart';
import 'package:flutter_absensi_app/src/features/home/presentation/page/home_page.dart';
import 'package:flutter_absensi_app/src/features/profile/presentation/pages/profile_screen.dart';
import 'package:flutter_absensi_app/src/features/setting/presentation/pages/setting_screen.dart';
import 'package:go_router/go_router.dart';

final _rootNavigationKey = GlobalKey<NavigatorState>();
final _shellNavigationHomeKey =
    GlobalKey<NavigatorState>(debugLabel: 'shellHomeKey');
final _shellNavigationHistoryKey =
    GlobalKey<NavigatorState>(debugLabel: 'shellHistory');
final _shellNavigationSettingKey =
    GlobalKey<NavigatorState>(debugLabel: 'shellSettingy');
final _shellNavigationProfileKey =
    GlobalKey<NavigatorState>(debugLabel: 'shellProfile');

final GoRouter routerProvider = GoRouter(
  initialLocation: '/login',
  navigatorKey: _rootNavigationKey,
  routes: [
    GoRoute(
      path: '/login',
      name: LoginScreen.routerName,
      pageBuilder: (context, state) => NoTransitionPage(child: LoginScreen()),
    ),
    StatefulShellRoute.indexedStack(
        builder: (context, state, navigationSHell) {
          return ScaffoldWithNestedNavigation(navigationShell: navigationSHell);
        },
        branches: [
          StatefulShellBranch(navigatorKey: _shellNavigationHomeKey, routes: [
            GoRoute(
              path: '/',
              name: HomeScreen.routerName,
              pageBuilder: (context, state) =>
                  NoTransitionPage(child: HomeScreen()),
            ),
          ]),
          StatefulShellBranch(
              navigatorKey: _shellNavigationHistoryKey,
              routes: [
                GoRoute(
                  path: '/history',
                  name: HistoryScreen.routerName,
                  pageBuilder: (context, state) =>
                      const NoTransitionPage(child: HistoryScreen()),
                ),
              ]),
          StatefulShellBranch(
              navigatorKey: _shellNavigationSettingKey,
              routes: [
                GoRoute(
                  path: '/setting',
                  name: SettingScreen.routerName,
                  pageBuilder: (context, state) =>
                      const NoTransitionPage(child: SettingScreen()),
                ),
              ]),
          StatefulShellBranch(
              navigatorKey: _shellNavigationProfileKey,
              routes: [
                GoRoute(
                  path: '/profile',
                  name: ProfileScreen.routerName,
                  pageBuilder: (context, state) =>
                      NoTransitionPage(child: ProfileScreen()),
                ),
              ]),
        ]),
    GoRoute(
      path: '/attendance',
      name: AttendancePage.routerName,
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: AttendancePage()),
    )
  ],
);

class ScaffoldWithNestedNavigation extends StatelessWidget {
  const ScaffoldWithNestedNavigation(
      {super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 10),
        ]),
        child: NavigationBar(
          onDestinationSelected: _goBranch,
          selectedIndex: navigationShell.currentIndex,
          indicatorColor: Colors.blue,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.history), label: 'History'),
            NavigationDestination(icon: Icon(Icons.settings), label: 'Setting'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
