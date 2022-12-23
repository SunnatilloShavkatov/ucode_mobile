import 'package:ucode_mobile/features/booking/persentation/pages/bookings_page.dart';
import 'package:ucode_mobile/features/interest/persentation/pages/interest_page.dart';
import 'package:ucode_mobile/features/main/presentation/pages/main_page.dart';
import 'package:ucode_mobile/features/profile/persentation/pages/edit_profile/edit_profile_page.dart';
import 'package:ucode_mobile/features/profile/persentation/pages/profile_page.dart';
import 'package:ucode_mobile/features/search/presentation/pages/search_page.dart';
import 'package:ucode_mobile/features/splash/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../core/local_source/local_source.dart';
import '../injector_container.dart';
import 'name_routes.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final shellRootNavigatorKey = GlobalKey<NavigatorState>();
final localSource = sl<LocalSource>();

final GoRouter router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: Routes.splash,
  // redirect: (context, state) async {
  //   if ((localSource.getAccessToken() ?? '').isEmpty &&
  //       state.subloc != Routes.login) {
  //     return Routes.login;
  //   } else {
  //     return null;
  //   }
  // },
  routes: [
    GoRoute(
      parentNavigatorKey: rootNavigatorKey,
      name: Routes.splash,
      path: Routes.splash,
      builder: (_, __) => const SplashPage(),
    ),
    ShellRoute(
      navigatorKey: shellRootNavigatorKey,
      builder: (context, routerState, child) {
        if (routerState.extra is Map<String, dynamic>) {
          return MainPage(
            json: const {
              "type": "main",
              "items": [
                {"title": "Поиск", "icon": "search"},
                {"title": "Интересное", "icon": "interest"},
                {"title": "Бронирования", "icon": "basket"},
                {"title": "Профиль", "icon": "profile"}
              ]
            },
            child: child,
          );
        } else {
          return MainPage(
            json: const {
              "type": "main",
              "items": [
                {"title": "Поиск", "icon": "search"},
                {"title": "Интересное", "icon": "interest"},
                {"title": "Бронирования", "icon": "basket"},
                {"title": "Профиль", "icon": "profile"}
              ]
            },
            child: child,
          );
        }
      },
      routes: [
        GoRoute(
          name: Routes.search,
          path: Routes.search,
          builder: (_, __) => const SearchPage(),
        ),
        GoRoute(
          name: Routes.interest,
          path: Routes.interest,
          builder: (_, __) => const InterestPage(),
        ),
        GoRoute(
          name: Routes.booking,
          path: Routes.booking,
          builder: (_, __) => const BookingsPage(),
        ),
        GoRoute(
          name: Routes.profile,
          path: Routes.profile,
          builder: (_, __) => const ProfilePage(),
        ),
      ],
    ),
    GoRoute(
      parentNavigatorKey: rootNavigatorKey,
      name: Routes.editProfile,
      path: Routes.editProfile,
      builder: (_, __) => const EditProfilePage(),
    ),
  ],
);
