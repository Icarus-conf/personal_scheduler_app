import 'dart:io';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';
import 'package:personal_scheduler_app/config/routes/routes.dart';
import 'package:personal_scheduler_app/core/enums/request_status.dart';
import 'package:personal_scheduler_app/core/reusable_widgets/custom_textfield_widget.dart';
import 'package:personal_scheduler_app/core/reusable_widgets/custom_toast_widget.dart';
import 'package:personal_scheduler_app/core/reusable_widgets/wavy_widget.dart';
import 'package:personal_scheduler_app/core/utils/app_colors.dart';
import 'package:personal_scheduler_app/core/reusable_widgets/custom_painters.dart';
import 'package:personal_scheduler_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  File? _selectedImage;
  final ImagePicker _picker = ImagePicker();

  final _formKey = GlobalKey<FormState>(); // Form key for validation

  Future<void> _pickImage() async {
    try {
      final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        setState(() {
          _selectedImage = File(pickedFile.path);
        });
      }
    } catch (e) {
      myToast(
        text: "Failed to pick image: ${e.toString()}",
        isError: true,
      );
    }
  }

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

  // Confirm password validation function
  String? _validateConfirmPassword(String? confirmPassword) {
    if (confirmPassword == null || confirmPassword.isEmpty) {
      return "Please confirm your password.";
    }
    if (confirmPassword != passwordController.text) {
      return "Passwords do not match.";
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
                if (state.registerStatus == RequestStatus.failure) {
                  log(state.registerFailures?.message ?? '');
                  myToast(
                    text: state.registerFailures?.message ??
                        'Registration failed',
                    isError: true,
                  );
                }
                if (state.registerStatus == RequestStatus.success) {
                  myToast(
                    text: "Registration successful!",
                    isError: false,
                  );
                  context.goNamed(RoutesNames.loginView);
                }
              },
              builder: (context, state) {
                if (state.registerStatus == RequestStatus.loading) {
                  return Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 0.5.sh),
                      child: Lottie.asset(
                        "assets/lottie/loading.json",
                        height: 100.h,
                        width: 100.w,
                      ),
                    ),
                  );
                }
                return Column(
                  children: [
                    SizedBox(height: 60.h),
                    Text(
                      "Create Account",
                      style: TextStyle(
                          fontSize: 24.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20.h),
                    GestureDetector(
                      onTap: _pickImage,
                      child: CircleAvatar(
                        radius: 40.r,
                        backgroundColor: AppColors.primaryColor,
                        backgroundImage: _selectedImage != null
                            ? FileImage(_selectedImage!)
                            : null,
                        child: _selectedImage == null
                            ? Icon(Icons.camera_alt,
                                size: 30.r, color: Colors.white)
                            : null,
                      ),
                    ),
                    SizedBox(height: 100.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Form(
                        key: _formKey, // Attach the form key here
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextField(
                              label: "Full Name",
                              hintText: "Enter your full name",
                              controller: nameController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please enter your full name.";
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 15.h),
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
                              obscureText: true,
                              validator: _validatePassword,
                            ),
                            SizedBox(height: 15.h),
                            CustomTextField(
                              label: "Confirm Password",
                              hintText: "Re-enter your password",
                              controller: confirmPasswordController,
                              obscureText: true,
                              validator: _validateConfirmPassword,
                            ),
                            SizedBox(height: 20.h),
                            SizedBox(
                              width: double.infinity,
                              height: 50.h,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState?.validate() ??
                                      false) {
                                    BlocProvider.of<AuthBloc>(context).add(
                                      RegisterEvent(
                                        name: nameController.text,
                                        email: emailController.text,
                                        password: passwordController.text,
                                        imageFile: _selectedImage,
                                      ),
                                    );
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.primaryColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                ),
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18.sp),
                                ),
                              ),
                            ),
                            SizedBox(height: 20.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Already have an account? ",
                                    style: TextStyle(fontSize: 14.sp)),
                                GestureDetector(
                                  onTap: () {
                                    GoRouter.of(context)
                                        .pushNamed(RoutesNames.loginView);
                                  },
                                  child: Text(
                                    "Login here",
                                    style: TextStyle(
                                        color: AppColors.primaryColor,
                                        fontSize: 14.sp),
                                  ),
                                ),
                              ],
                            ),
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

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }
}
