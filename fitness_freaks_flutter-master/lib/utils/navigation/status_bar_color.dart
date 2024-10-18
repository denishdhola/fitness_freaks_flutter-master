import 'package:fitness_freaks/configs/app_colors.dart';
import 'package:flutter/services.dart';

void setTransparentColorToTitleBar() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColors.transparentColor,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: AppColors.primaryColor,
      systemNavigationBarIconBrightness: Brightness.light));
}

void setWhiteColorToTitleBar() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: AppColors.transparentColor,
    statusBarColor: AppColors.transparentColor,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
}

void setDeviceOrientationVertical() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}
