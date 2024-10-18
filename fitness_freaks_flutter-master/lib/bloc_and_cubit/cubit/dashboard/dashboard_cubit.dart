// ignore_for_file: use_build_context_synchronously

import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fitness_freaks/configs/app_colors.dart';
import 'package:fitness_freaks/screens/dashboard/tabs/dietplan_tab.dart';
import 'package:fitness_freaks/screens/dashboard/tabs/features_tab.dart';
import 'package:fitness_freaks/screens/dashboard/tabs/feed_tab.dart';
import 'package:fitness_freaks/screens/dashboard/tabs/home%20tab/home_tab.dart';
import 'package:fitness_freaks/screens/dashboard/tabs/profile_tab.dart';
import 'package:fitness_freaks/utils/common/show_app_close_warning_dialog.dart';
import 'package:fitness_freaks/utils/common/show_logs.dart';
import 'package:fitness_freaks/utils/navigation/page_navigator.dart';
import 'package:fitness_freaks/widgets/common/network_dialog.dart';
import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(DashboardInitialState());

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int currentTabIndex = 0;
  int pageIndex = 0;

  void changeTab({required int tabIndex, dynamic arguments}) {
    emit(DashboardInitialState());
    currentTabIndex = tabIndex;
    showLogs(message: "CHANGE TAB -- $tabIndex -- $currentTabIndex");
    emit(DashboardTabChangeState());
  }

  handleAndroidBackButton({required BuildContext context}) {
    if (currentTabIndex != 0) {
      PageNavigator.goToHomeTab(context: context);
    } else {
      showAppCloseWarningDialog(context: context);
    }
  }

  void checkNetwork(BuildContext context) {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
        Future.delayed(const Duration(seconds: 0), () {
          isNetworkDialog = true;
          showLogs(message: result.name);
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return WillPopScope(
                  onWillPop: () async {
                    return false;
                  },
                  child: const BlurDialog());
            },
          );
        });
      } else {
        if (isNetworkDialog) {
          PageNavigator.pop(context: context);
        }
        isNetworkDialog = false;
      }
    });
  }

  Widget getTabView() {
    switch (currentTabIndex) {
      case 0:
        return const HomeTab();
      case 1:
        return const FeedTab();
      case 2:
        return const DietplanTab();
      case 3:
        return const FeaturesTab();
      case 4:
        return const ProfileTab();
      default:
        return Container(color: AppColors.primaryColor);
    }
  }
}

bool isNetworkDialog = false;
