import 'package:fitness_freaks/bloc_and_cubit/cubit/dashboard/dashboard_cubit.dart';
import 'package:fitness_freaks/widgets/navigation/app_bar_view.dart';
import 'package:fitness_freaks/widgets/navigation/bottom_navigation_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    BlocProvider.of<DashboardCubit>(context).checkNetwork(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        DashboardCubit cubit = BlocProvider.of<DashboardCubit>(context);
        return Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: BottomNavigationBarView(
            cubit: cubit,
          ),
          body: cubit.getTabView(),
        );
      },
    );
  }
}
