import 'package:auto_route/auto_route.dart';
import 'package:autoroute/dashboard/children/settings/settings_view.dart';
import 'package:autoroute/dashboard/children/user/user_detail_view.dart';
import 'package:autoroute/dashboard/dashboard_view.dart';
import 'package:autoroute/dashboard/children/user/user_view.dart';
import 'package:autoroute/home/home_view.dart';
import 'package:autoroute/product/navigator/guard/auth_guard.dart';
import 'package:flutter/material.dart';

import '../../dashboard/children/user/model/user_model.dart';
import '../../home/home_detail_view.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomeView, path: 'home', initial: true),
    AutoRoute(page: HomeDetailView, guards: [AuthGuard], path: 'homedetail'),
    AutoRoute(
      page: DashboardView,
      children: [
        AutoRoute(
          page: EmptyPageRouter,
          name: 'UserFullRoute',
          path: 'userFullRoute',
          children: [
            AutoRoute(page: UserView, path: 'userview', initial: true),
            AutoRoute(page: UserDetailView, path: ':id'),
          ],
        ),
        AutoRoute(page: SettingsView, path: 'settings'),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter({required super.authGuard});
}

class EmptyPageRouter extends AutoRouter {
  const EmptyPageRouter({Key? key}) : super(key: key);
}
