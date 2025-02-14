import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:personal_scheduler_app/core/enums/request_status.dart';
import 'package:personal_scheduler_app/core/utils/app_colors.dart';
import 'package:personal_scheduler_app/core/reusable_widgets/custom_btn.dart';
import 'package:personal_scheduler_app/core/reusable_widgets/custom_textfield_widget.dart';
import 'package:personal_scheduler_app/core/reusable_widgets/custom_toast_widget.dart';
import 'package:personal_scheduler_app/core/utils/custom_text_styles.dart';
import 'package:personal_scheduler_app/features/auth/presentation/bloc/auth_bloc.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  ForgetPasswordViewScreenState createState() =>
      ForgetPasswordViewScreenState();
}

class ForgetPasswordViewScreenState extends State<ForgetPasswordView> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60.h,
        backgroundColor: AppColors.appBarGradientColor[0],
        title: Text(
          "Forgot Password",
          style: CustomTextStyles.textStyle16.copyWith(color: Colors.white),
        ),
        leading: GestureDetector(
          onTap: () => GoRouter.of(context).pop(),
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state.resetPassStatus == RequestStatus.failure) {
              myToast(
                text: state.resetPassFailures?.message ?? '',
                isError: true,
              );
            }
            if (state.resetPassStatus == RequestStatus.success) {
              myToast(
                  text: "Succuess: Please Check Your Email", isError: false);
            }
          },
          builder: (context, state) {
            if (state.resetPassStatus == RequestStatus.loading) {
              return Center(
                  child: Lottie.asset(
                "assets/lottie/loading.json",
                height: 100.h,
                width: 100.w,
              ));
            }
            return Column(
              spacing: 20.h,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter your email to receive a password reset link.",
                  style: CustomTextStyles.textStyle14,
                ),
                CustomTextField(
                  controller: _emailController,
                  label: 'Email',
                  hintText: 'Enter your email address',
                  keyboardType: TextInputType.emailAddress,
                ),
                CustomBtn(
                  onPressed: () {
                    BlocProvider.of<AuthBloc>(context)
                        .add(ResetPasswordEvent(email: _emailController.text));
                  },
                  text: 'Send Reset Link',
                  txtColor: Colors.white,
                  bgColor: AppColors.appBarGradientColor[0],
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Back to Login'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
