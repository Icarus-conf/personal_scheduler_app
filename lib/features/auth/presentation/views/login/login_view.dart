import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:personal_scheduler_app/config/routes/routes.dart';
import 'package:personal_scheduler_app/core/enums/request_status.dart';
import 'package:personal_scheduler_app/core/reusable_widgets/custom_btn.dart';
import 'package:personal_scheduler_app/core/reusable_widgets/custom_textfield_widget.dart';
import 'package:personal_scheduler_app/core/reusable_widgets/custom_toast_widget.dart';
import 'package:personal_scheduler_app/core/reusable_widgets/wavy_widget.dart';
import 'package:personal_scheduler_app/core/utils/app_colors.dart';
import 'package:personal_scheduler_app/core/reusable_widgets/custom_painters.dart';
import 'package:personal_scheduler_app/core/utils/custom_text_styles.dart';
import 'package:personal_scheduler_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/reusable_widgets/custom_text_btn.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isChecked = false;
  bool isObs = true;

  final _formKey = GlobalKey<FormState>(); // Form key for validation

  // Email validation function
  String? _validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return "Please enter your email.";
    }
    final emailRegex =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    if (!emailRegex.hasMatch(email)) {
      return "Please enter a valid email.";
    }
    return null;
  }

  // Password validation function
  String? _validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return "Please enter your password.";
    }
    if (password.length < 6) {
      return "Password must be at least 6 characters long.";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 100.h,
            color: AppColors.backgroundColor,
          ),
          WavyWidget(
            top: 125.h,
            left: 0,
            right: 0,
            height: 0.4.sh,
            painter: WavePainter1(),
          ),
          WavyWidget(
            top: 90.h,
            left: 0,
            right: 0,
            height: 0.3.sh,
            painter: WavePainter2(),
          ),
          SingleChildScrollView(
            child: BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state.loginStatus == RequestStatus.failure) {
                  log(state.loginFailures?.message ?? '');
                  myToast(
                    text: state.loginFailures?.message ?? '',
                    isError: true,
                  );
                }
                if (state.loginStatus == RequestStatus.success) {
                  GoRouter.of(context)
                      .go(RoutesNames.taskView, extra: state.userModelLogin);
                  myToast(
                    text: "success",
                    isError: false,
                  );
                }
              },
              builder: (context, state) {
                if (state.loginStatus == RequestStatus.loading) {
                  return Center(
                    child: Lottie.asset(
                      "assets/lottie/loading.json",
                      height: 100.h,
                      width: 100.w,
                    ),
                  );
                }
                return Column(
                  children: [
                    SizedBox(height: 60.h),
                    Text(
                      "Birdy",
                      style: CustomTextStyles.textStyle24,
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      width: 80.w,
                      height: 80.h,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primaryColor,
                      ),
                      child: SvgPicture.asset("assets/icons/app-icon.svg"),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    Text(
                      "Your personal scheduler friend, \nRight at your hand.",
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.textStyle12.copyWith(
                        color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(height: 50.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Form(
                        key: _formKey, // Attach the form key here
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextField(
                              label: "Email",
                              hintText: "Enter your email",
                              controller: emailController,
                              validator: _validateEmail,
                            ),
                            SizedBox(height: 15.h),
                            CustomTextField(
                              label: "Password",
                              hintText: "Enter your password",
                              controller: passwordController,
                              obscureText: isObs,
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isObs = !isObs;
                                  });
                                },
                                child: Icon(
                                  isObs
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                              validator: _validatePassword,
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
                                CustomTextBtn(
                                  text: "Forgot Password?",
                                  onPressed: () {
                                    GoRouter.of(context)
                                        .pushNamed(RoutesNames.forgetView);
                                  },
                                ),
                              ],
                            ),
                            SizedBox(height: 20.h),
                            CustomBtn(
                              text: "Sign In",
                              onPressed: () {
                                if (_formKey.currentState?.validate() ??
                                    false) {
                                  BlocProvider.of<AuthBloc>(context).add(
                                    LoginEvent(
                                      email: emailController.text,
                                      password: passwordController.text,
                                    ),
                                  );
                                }
                              },
                            ),
                            SizedBox(height: 20.h),
                            Row(
                              spacing: 5.w,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("You don't have an account? ",
                                    style: TextStyle(fontSize: 14.sp)),
                                CustomTextBtn(
                                    onPressed: () {
                                      GoRouter.of(context)
                                          .pushNamed(RoutesNames.registerView);
                                    },
                                    text: "Register Now!")
                              ],
                            ),
                            SizedBox(height: 20.h),
                          ],
                        ),
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
