import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:personal_scheduler_app/core/enums/request_status.dart';
import 'package:personal_scheduler_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:personal_scheduler_app/features/auth/presentation/views/login/login_view.dart';
import 'package:personal_scheduler_app/features/task/presentation/views/task_view.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  @override
  void initState() {
    BlocProvider.of<AuthBloc>(context).add(const AuthEvent.checkAutoLogin());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state.checkAutoLoginStatus == RequestStatus.loading) {
          return Scaffold(
            body: Center(
              child: Lottie.asset(
                "assets/lottie/loading.json",
                height: 100.h,
                width: 100.w,
              ),
            ),
          );
        } else if (state.checkAutoLoginStatus == RequestStatus.success) {
          return const TaskView();
        } else {
          return const LoginView();
        }
      },
    );
  }
}
