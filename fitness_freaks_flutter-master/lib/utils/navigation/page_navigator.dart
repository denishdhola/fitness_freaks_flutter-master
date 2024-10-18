import 'package:fitness_freaks/bloc_and_cubit/cubit/dashboard/dashboard_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageNavigator {
  static Future<dynamic> pushPage(
      {required BuildContext context, required Widget page}) {
    return Navigator.push(
        context, CupertinoPageRoute(builder: (context) => page));
  }

  static Future<dynamic> pushAndRemoveUntilPage(
      {required BuildContext context, required Widget page}) {
    return Navigator.pushAndRemoveUntil(context,
        CupertinoPageRoute(builder: (context) => page), (route) => false);
  }

  static Future<dynamic> pushReplacementPage(
      {required BuildContext context, required Widget page}) {
    return Navigator.pushReplacement(
        context, CupertinoPageRoute(builder: (context) => page));
  }

  static void pop({required BuildContext context}) {
    return Navigator.of(context).pop();
  }

  static void goToHomeTab({required BuildContext context}) {
    BlocProvider.of<DashboardCubit>(context).changeTab(tabIndex: 0);
  }
  //
  // static void goToShopTab({required BuildContext context}) {
  //   BlocProvider.of<DashboardCubit>(context).changeTab(tabIndex: 1);
  // }
  //
  // static void goToCartTab({required BuildContext context}) {
  //   BlocProvider.of<DashboardCubit>(context).changeTab(tabIndex: 2);
  // }
  //
  // static void goToAccountTab({required BuildContext context}) {
  //   BlocProvider.of<DashboardCubit>(context).changeTab(tabIndex: 3);
  // }
}
