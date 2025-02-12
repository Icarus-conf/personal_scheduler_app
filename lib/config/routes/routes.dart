import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_scheduler_app/features/auth/presentation/views/login_view.dart';
import 'package:personal_scheduler_app/features/auth/presentation/views/register_view.dart';

class RoutesNames {
  static const String loginView = "/";
  static const String registerView = "/registerView";
}

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      name: RoutesNames.loginView,
      path: RoutesNames.loginView,
      builder: (BuildContext context, GoRouterState state) {
        return LoginView();
      },
    ),
    GoRoute(
      name: RoutesNames.registerView,
      path: RoutesNames.registerView,
      builder: (BuildContext context, GoRouterState state) {
        return RegisterView();
      },
    ),
  ],
  errorBuilder: (BuildContext context, GoRouterState state) {
    return const Scaffold(
      body: Center(
        child: Text('Route not found!'),
      ),
    );
  },
);
