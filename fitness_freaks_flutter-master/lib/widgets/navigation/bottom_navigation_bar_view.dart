import 'package:fitness_freaks/bloc_and_cubit/cubit/dashboard/dashboard_cubit.dart';
import 'package:fitness_freaks/configs/app_colors.dart';
import 'package:fitness_freaks/widgets/common/icon_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class BottomNavigationBarView extends StatelessWidget {
  const BottomNavigationBarView({super.key, required this.cubit});
  final DashboardCubit cubit;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: AppColors.whiteColor,
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.aspectRatio * 130,
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              cubit.changeTab(tabIndex: 0);
            },
            child: IconView(
              selectedIcon: IconlyBold.home,
              unSelectedIcon: IconlyLight.home,
              isSelected: cubit.currentTabIndex == 0,
            ),
          ),
          InkWell(
            onTap: () {
              cubit.changeTab(tabIndex: 1);
            },
            child: IconView(
              selectedIcon: IconlyBold.discovery,
              unSelectedIcon: IconlyLight.discovery,
              isSelected: cubit.currentTabIndex == 1,
            ),
          ),
          InkWell(
            onTap: () {
              cubit.changeTab(tabIndex: 2);
            },
            child: IconView(
              selectedIcon: IconlyBold.filter,
              unSelectedIcon: IconlyLight.filter,
              isSelected: cubit.currentTabIndex == 2,
            ),
          ),
          InkWell(
            onTap: () {
              cubit.changeTab(tabIndex: 3);
            },
            child: IconView(
              selectedIcon: CupertinoIcons.circle_grid_3x3_fill,
              unSelectedIcon: CupertinoIcons.circle_grid_3x3,
              isSelected: cubit.currentTabIndex == 3,
            ),
          ),
          InkWell(
            onTap: () {
              cubit.changeTab(tabIndex: 4);
            },
            child: IconView(
              selectedIcon: IconlyBold.profile,
              unSelectedIcon: IconlyLight.profile,
              isSelected: cubit.currentTabIndex == 4,
            ),
          ),
        ],
      ),
    );
  }
}
