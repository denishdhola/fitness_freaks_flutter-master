import 'package:fitness_freaks/configs/app_colors.dart';
import 'package:fitness_freaks/widgets/common/text_view.dart';
import 'package:flutter/material.dart';

void showToast(
    {required BuildContext context,
    required String msg,
    bool isError = false}) {
  ScaffoldMessenger.of(context).clearSnackBars();
  SnackBar snackBar = SnackBar(
      padding: const EdgeInsets.all(0),
      margin: const EdgeInsets.all(10),
      elevation: 0,
      duration: const Duration(seconds: 5),
      behavior: SnackBarBehavior.floating,
      backgroundColor: AppColors.transparentColor,
      content: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
            color: isError
                ? AppColors.snackBarErrorColor
                : AppColors.snackBarSuccessColor,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                margin: const EdgeInsets.only(right: 10),
                child: Icon(isError ? Icons.info : Icons.check_circle,
                    size: 30, color: AppColors.whiteColor)),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BoldTextView(
                      data: isError ? "Error" : "Success",
                      textColor: AppColors.whiteColor),
                  const SizedBox(height: 5),
                  RegularTextView(data: msg, textColor: AppColors.whiteColor),
                ],
              ),
            ),
          ],
        ),
      ));
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
