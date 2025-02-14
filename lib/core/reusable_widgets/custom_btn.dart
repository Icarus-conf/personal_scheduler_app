import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_scheduler_app/core/utils/app_colors.dart';
import 'package:personal_scheduler_app/core/utils/custom_text_styles.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    super.key,
    required this.onPressed,
    this.bgColor,
    this.borderRadius,
    this.txtColor,
    required this.text,
    this.height,
    this.width,
    this.fontSize,
  });
  final Function()? onPressed;
  final Color? bgColor;
  final Color? txtColor;
  final BorderRadiusGeometry? borderRadius;
  final String text;
  final double? height;
  final double? width;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 50.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor ?? AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(10.r),
          ),
        ),
        child: Text(
          text,
          style: CustomTextStyles.textStyle18.copyWith(
            color: txtColor ?? Colors.white,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
