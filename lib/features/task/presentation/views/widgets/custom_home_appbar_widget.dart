import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:personal_scheduler_app/config/routes/routes.dart';
import 'package:personal_scheduler_app/core/utils/app_colors.dart';
import 'package:personal_scheduler_app/core/utils/custom_text_styles.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({
    super.key,
    required this.imageURl,
    required this.userName,
    required this.userEmail,
  });

  final String imageURl;
  final String userName;
  final String userEmail;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: AppColors.appBarGradientColor,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      padding:
          EdgeInsets.only(left: 16.0.r, right: 16.0.r, bottom: 10.r, top: 60.r),
      child: Row(
        spacing: 10.w,
        children: [
          GestureDetector(
            onTap: () {
              GoRouter.of(context).pushNamed(RoutesNames.profileView);
            },
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 27.r,
              child: ClipOval(
                child: CachedNetworkImage(
                  imageUrl: imageURl,
                  width: 50.w,
                  height: 50.h,
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
                    return SvgPicture.asset("assets/icons/person.svg");
                  },
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Back!",
                style: CustomTextStyles.textStyle12.copyWith(
                  color: Colors.grey[100],
                ),
              ),
              Text(
                userName,
                style: CustomTextStyles.textStyle12.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
