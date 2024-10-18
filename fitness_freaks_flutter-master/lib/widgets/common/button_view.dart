import 'package:fitness_freaks/configs/app_colors.dart';
import 'package:fitness_freaks/widgets/common/text_view.dart';
import 'package:flutter/material.dart';

class ButtonView extends StatelessWidget {
  const ButtonView({
    super.key,
    required this.onTap,
    required this.buttonName,
    this.topMargin = 0,
    this.bottomMargin = 0,
    this.leftMargin = 0,
    this.rightMargin = 0,
    this.verticalPadding = 10,
    this.backgroundColor = AppColors.primaryColor,
    this.textColor = AppColors.whiteColor,
  });

  final String buttonName;
  final VoidCallback onTap;
  final double topMargin;
  final double bottomMargin;
  final double leftMargin;
  final double rightMargin;
  final double verticalPadding;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding:
            EdgeInsets.symmetric(horizontal: 15, vertical: verticalPadding),
        margin: EdgeInsets.only(
            top: topMargin,
            bottom: bottomMargin,
            left: leftMargin,
            right: rightMargin),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: SemiBoldTextView(
              data: buttonName, fontSize: 16, textColor: textColor),
        ),
      ),
    );
  }
}
