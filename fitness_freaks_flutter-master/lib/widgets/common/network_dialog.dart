import 'package:fitness_freaks/configs/app_colors.dart';
import 'package:fitness_freaks/widgets/common/text_view.dart';
import 'package:flutter/material.dart';

class BlurDialog extends StatelessWidget {
  const BlurDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const Dialog(
        backgroundColor: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: SemiBoldTextView(
              data: "No Internet Connection!",
              textAlign: TextAlign.center,
              fontSize: 16,
              textColor: AppColors.greyColor,
            ),
          ),
        ));
  }
}
