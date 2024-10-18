import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  ///MATERIAL COLOR
  static MaterialColor primarySwatchColor = MaterialColor(
    primaryColor.value,
    const <int, Color>{
      50: primaryColor,
      100: primaryColor,
      200: primaryColor,
      300: primaryColor,
      400: primaryColor,
      500: primaryColor,
      600: primaryColor,
      700: primaryColor,
      800: primaryColor,
      900: primaryColor,
    },
  );

  static const Color whiteColor = Colors.white;
  static const Color blackColor = Colors.black;
  static const Color redColor = Colors.red;
  static const Color greenColor = Colors.green;
  static const Color greyColor = Colors.grey;
  static const Color tealColor = Colors.teal;
  static const Color pinkColor = Colors.pink;
  static const Color amberColor = Colors.amber;
  static const Color yellowColor = Colors.yellow;
  static const Color orangeColor = Colors.orange;
  static const Color transparentColor = Colors.transparent;

  ///COLOR CODES
  static const Color primaryColor = Color(0xff5705D2);
  static const Color secondaryColor = Color(0xff);
  static const Color backgroundColor = Color(0xffEEEEEE);
  static const Color creamColor = Color(0xffF3AA60);
  static const Color maroonColor = Color(0xFF6E0A23);
  static const Color iconGradientMaroonColor = Color(0xFFc31432);
  static const Color iconGradientBlueColor = Color(0xFF240b36);
  static const Color violateColor = Color(0xff645AFE);
  static const Color snackBarSuccessColor = Color(0xFF74D10C);
  static const Color snackBarErrorColor = Color(0xFFF4384F);
  static const Color cardColor = Color(0xffcccce7);

  ///TEXT GRADIENT
  static List<Color> textGradientColorList = [
    AppColors.amberColor,
    AppColors.pinkColor,
  ];

  ///SELECTED ICON GRADIENT
  static List<Color> selectedIconGradientColorList = [
    iconGradientBlueColor,
    iconGradientMaroonColor,
  ];

  ///UNSELECTED ICON GRADIENT
  static List<Color> unSelectedIconGradientColorList = [
    whiteColor,
    whiteColor,
  ];

  ///TRANSPARENT GRADIENT
  static LinearGradient transparentLinearGradient = const LinearGradient(
    colors: [
      transparentColor,
      transparentColor,
    ],
    stops: [0.1, 1],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  ///WHITE GRADIENT
  static LinearGradient whiteLinearGradient = const LinearGradient(
    colors: [
      whiteColor,
      whiteColor,
    ],
    stops: [0.1, 1],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  ///GLASSMORPHISM GRADIENT
  static LinearGradient glassmorphismLinearGradient = LinearGradient(
    colors: [
      whiteColor.withOpacity(0.1),
      whiteColor.withOpacity(0.1),
    ],
    stops: const [0.1, 1],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  ///ICON GRADIENT
  static LinearGradient iconLinearGradient = LinearGradient(
    colors: selectedIconGradientColorList,
    begin: Alignment.bottomRight,
    end: Alignment.bottomLeft,
  );
}
