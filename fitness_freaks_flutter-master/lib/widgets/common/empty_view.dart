import 'package:fitness_freaks/configs/app_colors.dart';
import 'package:fitness_freaks/configs/app_images.dart';
import 'package:fitness_freaks/widgets/common/text_view.dart';
import 'package:flutter/material.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({
    Key? key,
    required this.content,
    this.width,
    this.height,
  }) : super(key: key);

  final String content;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.appLogo,
              width: width ?? MediaQuery.of(context).size.width / 2.5,
              height: height ?? MediaQuery.of(context).size.width / 2.5,
              color: AppColors.redColor,
            ),
            SemiBoldTextView(
                data: content,
                textColor: AppColors.whiteColor,
                fontSize: 16,
                topPadding: 10)
          ],
        ),
      ),
    );
  }
}
