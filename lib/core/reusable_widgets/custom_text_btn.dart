import 'package:flutter/widgets.dart';
import 'package:personal_scheduler_app/core/utils/app_colors.dart';
import 'package:personal_scheduler_app/core/utils/custom_text_styles.dart';

class CustomTextBtn extends StatelessWidget {
  const CustomTextBtn({
    super.key,
    required this.onPressed,
    required this.text,
    this.txtColor,
  });

  final Function()? onPressed;
  final String text;
  final Color? txtColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Text(
        text,
        style: CustomTextStyles.textStyle12.copyWith(
          color: txtColor ?? AppColors.primaryColor,
        ),
      ),
    );
  }
}
