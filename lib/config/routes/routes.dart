import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_scheduler_app/features/auth/presentation/views/auth_view.dart';
import 'package:personal_scheduler_app/features/auth/presentation/views/login/login_view.dart';
import 'package:personal_scheduler_app/features/auth/presentation/views/login/widgets/forget_password_view.dart';
import 'package:personal_scheduler_app/features/auth/presentation/views/register/register_view.dart';
import 'package:personal_scheduler_app/features/task/domain/entities/task_entity.dart';
import 'package:personal_scheduler_app/features/task/presentation/views/add_task_view.dart';
import 'package:personal_scheduler_app/features/task/presentation/views/edit_task_view.dart';
import 'package:personal_scheduler_app/features/task/presentation/views/profile_view.dart';
import 'package:personal_scheduler_app/features/task/presentation/views/task_view.dart';

class RoutesNames {
  static const String authView = "/";
  static const String loginView = "/loginView";
  static const String forgetView = "/forgetView";
  static const String registerView = "/registerView";
  static const String taskView = "/taskView";
  static const String addTaskView = "/addTaskView";
  static const String editTaskView = "/editTaskView";
  static const String profileView = "/profileView";
}

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      name: RoutesNames.authView,
      path: RoutesNames.authView,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return _buildPageWithFadeTransition(const AuthView());
      },
    ),
    GoRoute(
      name: RoutesNames.loginView,
      path: RoutesNames.loginView,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return _buildPageWithFadeTransition(const LoginView());
      },
    ),
    GoRoute(
      name: RoutesNames.forgetView,
      path: RoutesNames.forgetView,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return _buildPageWithFadeTransition(const ForgetPasswordView());
      },
    ),
    GoRoute(
      name: RoutesNames.registerView,
      path: RoutesNames.registerView,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return _buildPageWithFadeTransition(const RegisterView());
      },
    ),
    GoRoute(
      name: RoutesNames.taskView,
      path: RoutesNames.taskView,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return _buildPageWithFadeTransition(const TaskView());
      },
    ),
    GoRoute(
      name: RoutesNames.addTaskView,
      path: RoutesNames.addTaskView,
      pageBuilder: (BuildContext context, GoRouterState state) {
        final String userID = state.extra as String;
        return _buildPageWithFadeTransition(AddTaskView(userId: userID));
      },
    ),
    GoRoute(
      name: RoutesNames.editTaskView,
      path: RoutesNames.editTaskView,
      pageBuilder: (BuildContext context, GoRouterState state) {
        final data = state.extra as Map<String, dynamic>;
        final TaskEntity model = data['model'] as TaskEntity;
        final String userID = data['userID'] as String;
        return _buildPageWithFadeTransition(
            EditTaskView(userId: userID, model: model));
      },
    ),
    GoRoute(
      name: RoutesNames.profileView,
      path: RoutesNames.profileView,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return _buildPageWithFadeTransition(const ProfileView());
      },
    ),
  ],
  errorPageBuilder: (BuildContext context, GoRouterState state) {
    return _buildPageWithFadeTransition(
      const Scaffold(
        body: Center(
          child: Text('Route not found!'),
        ),
      ),
    );
  },
);

CustomTransitionPage _buildPageWithFadeTransition(Widget child) {
  return CustomTransitionPage(
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
  );
}
