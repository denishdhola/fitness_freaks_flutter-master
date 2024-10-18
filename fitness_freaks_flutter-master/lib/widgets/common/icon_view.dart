import 'package:fitness_freaks/configs/app_colors.dart';
import 'package:flutter/material.dart';

class IconView extends StatelessWidget {
  const IconView(
      {super.key,
      required this.selectedIcon,
      this.unSelectedIcon,
      this.isSelected = true,
      this.iconSize = 28});

  final IconData selectedIcon;
  final IconData? unSelectedIcon;
  final bool isSelected;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Icon(isSelected ? selectedIcon : unSelectedIcon ?? selectedIcon,
        size: iconSize,
        color: isSelected ? AppColors.primaryColor : AppColors.blackColor);
  }
}
