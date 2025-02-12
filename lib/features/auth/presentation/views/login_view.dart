import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_scheduler_app/config/routes/routes.dart';
import 'package:personal_scheduler_app/core/enums/request_status.dart';
import 'package:personal_scheduler_app/core/reusable_widgets/custom_textfield_widget.dart';
import 'package:personal_scheduler_app/core/reusable_widgets/custom_toast_widget.dart';
import 'package:personal_scheduler_app/core/utils/app_colors.dart';
import 'package:personal_scheduler_app/core/reusable_widgets/custom_painters.dart';
import 'package:personal_scheduler_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 100.h,
            color: AppColors.backgroundColor,
          ),
          Positioned(
            top: 125.h,
            left: 0,
            right: 0,
            child: CustomPaint(
              painter: WavePainter1(),
              child: SizedBox(
                width: double.infinity,
                height: 0.4.sh,
              ),
            ),
          ),
          Positioned(
            top: 90.h,
            left: 0,
            right: 0,
            child: CustomPaint(
              painter: WavePainter2(),
              child: SizedBox(
                width: double.infinity,
                height: 0.3.sh,
              ),
            ),
          ),
          SingleChildScrollView(
            child: BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state.loginStatus == RequestStatus.failure) {
                  log(state.loginFailures?.message ?? '');
                  myToast(
                    text: state.loginFailures?.message ?? '',
                    bgColor: Colors.red,
                    textColor: Colors.white,
                  );
                }
                if (state.loginStatus == RequestStatus.success) {
                  myToast(
                    text: "success",
                    bgColor: Colors.green,
                    textColor: Colors.white,
                  );
                }
              },
              builder: (context, state) {
                if (state.loginStatus == RequestStatus.loading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return Column(
                  children: [
                    SizedBox(height: 60.h),
                    Text(
                      "Daily Flow",
                      style: TextStyle(
                          fontSize: 24.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      width: 80.w,
                      height: 80.h,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    SizedBox(height: 100.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextField(
                            label: "Email",
                            hintText: "Enter your email",
                            controller: emailController,
                          ),
                          SizedBox(height: 15.h),
                          CustomTextField(
                            label: "Password",
                            hintText: "Enter your password",
                            controller: passwordController,
                            obscureText: true,
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                      value: isChecked,
                                      onChanged: (value) {
                                        setState(() {
                                          isChecked = !isChecked;
                                        });
                                      }),
                                  Text("Remember me",
                                      style: TextStyle(fontSize: 14.sp)),
                                ],
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                      color: AppColors.primaryColor,
                                      fontSize: 14.sp),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h),
                          SizedBox(
                            width: double.infinity,
                            height: 50.h,
                            child: ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<AuthBloc>(context).add(
                                  LoginEvent(
                                      email: emailController.text,
                                      password: passwordController.text),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                              ),
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18.sp),
                              ),
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Row(
                            spacing: 5.w,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("You don't have an account? ",
                                  style: TextStyle(fontSize: 14.sp)),
                              GestureDetector(
                                onTap: () {
                                  GoRouter.of(context)
                                      .pushNamed(RoutesNames.registerView);
                                },
                                child: Text(
                                  "Register here",
                                  style: TextStyle(
                                      color: AppColors.primaryColor,
                                      fontSize: 14.sp),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
