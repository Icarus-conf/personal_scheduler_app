import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:personal_scheduler_app/config/routes/routes.dart';
import 'package:personal_scheduler_app/core/enums/request_status.dart';
import 'package:personal_scheduler_app/core/reusable_widgets/custom_toast_widget.dart';
import 'package:personal_scheduler_app/core/utils/custom_text_styles.dart';
import 'package:personal_scheduler_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_scheduler_app/core/utils/app_colors.dart';
import 'package:personal_scheduler_app/core/reusable_widgets/custom_btn.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.watch<AuthBloc>().state.userModelLogin;

    if (user == null) {
      return const Scaffold(
        body: Center(child: Text('User not found')),
      );
    }

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60.h,
        backgroundColor: AppColors.appBarGradientColor[0],
        title: Text(
          user.name,
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
        padding: EdgeInsets.symmetric(horizontal: 16.0.r, vertical: 30.0.h),
        child: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state.logOutStatus == RequestStatus.failure) {
              myToast(
                text: state.logOutFailures?.message ?? '',
                isError: true,
              );
            }
            if (state.logOutStatus == RequestStatus.success) {
              myToast(
                text: "Successfully Logged Out",
                isError: false,
              );
              GoRouter.of(context).goNamed(RoutesNames.loginView);
            }
          },
          builder: (context, state) {
            if (state.logOutStatus == RequestStatus.loading) {
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
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 90.r,
                  child: ClipOval(
                    child: CachedNetworkImage(
                      imageUrl: user.profileImageUrl ?? '',
                      height: 150.h,
                      width: 150.w,
                      fit: BoxFit.cover,
                      placeholder: (context, url) {
                        return SizedBox(
                          width: 25.w,
                          height: 25.h,
                          child: Center(
                            child: Lottie.asset(
                              "assets/lottie/loading.json",
                              height: 100.h,
                              width: 100.w,
                            ),
                          ),
                        );
                      },
                      errorWidget: (context, url, error) {
                        return SvgPicture.asset(
                          "assets/icons/person.svg",
                          height: 150.h,
                          width: 150.w,
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  user.name,
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  user.email,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.grey,
                  ),
                ),
                Spacer(),
                CustomBtn(
                  text: 'Logout',
                  onPressed: () {
                    context.read<AuthBloc>().add(LogoutUser());
                  },
                  bgColor: Colors.red,
                  txtColor: Colors.white,
                ),
                Spacer(),
              ],
            );
          },
        ),
      ),
    );
  }
}
