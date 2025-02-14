import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toastification/toastification.dart';

myToast({
  required String text,
  bool isError = true,
  BuildContext? context,
}) =>
    toastification.show(
      context: context,
      alignment: Alignment.center,
      description: Text(
        text,
        style: TextStyle(
          fontSize: 12.sp,
          color: Colors.white,
        ),
      ),
      autoCloseDuration: const Duration(seconds: 3),
      style: ToastificationStyle.flatColored,
      showIcon: false,
      backgroundColor: isError ? Colors.red : Colors.green,
      primaryColor: Colors.white,
      closeButtonShowType: CloseButtonShowType.none,
      showProgressBar: false,
    );
