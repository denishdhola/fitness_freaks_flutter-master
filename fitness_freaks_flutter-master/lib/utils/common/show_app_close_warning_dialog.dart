import 'dart:io';

import 'package:fitness_freaks/configs/app_colors.dart';
import 'package:fitness_freaks/utils/navigation/page_navigator.dart';
import 'package:fitness_freaks/widgets/common/text_view.dart';
import 'package:flutter/material.dart';

void showAppCloseWarningDialog({required BuildContext context}) {
  showDialog(
    context: context,
    builder: (context) {
      return WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: AlertDialog(
          actionsPadding: EdgeInsets.zero,
          buttonPadding: EdgeInsets.zero,
          titlePadding: const EdgeInsets.symmetric(vertical: 10),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          title: const BoldTextView(
            data: "ALERT!",
            fontSize: 16,
            textColor: AppColors.redColor,
            textAlign: TextAlign.center,
          ),
          content: const SemiBoldTextView(
            data: "Do you want to close app?",
            fontSize: 16,
            textColor: AppColors.blackColor,
            textAlign: TextAlign.center,
          ),
          actions: [
            TextButton(
              onPressed: () {
                PageNavigator.pop(context: context);
                exit(0);
              },
              child: const SemiBoldTextView(
                  data: "Yes", fontSize: 15, textColor: AppColors.redColor),
            ),
            TextButton(
              onPressed: () {
                PageNavigator.pop(context: context);
              },
              child: const SemiBoldTextView(
                data: "No",
                fontSize: 15,
                textColor: AppColors.primaryColor,
              ),
            ),
          ],
        ),
      );
    },
  );
}
