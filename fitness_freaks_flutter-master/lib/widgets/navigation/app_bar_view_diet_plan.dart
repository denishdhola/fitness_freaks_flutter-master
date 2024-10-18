import 'package:fitness_freaks/configs/app_colors.dart';
import 'package:fitness_freaks/widgets/common/text_view.dart';
import 'package:flutter/material.dart';

class AppBarViewDietPlan extends StatefulWidget {
  const AppBarViewDietPlan({super.key});

  @override
  State<AppBarViewDietPlan> createState() => _AppBarViewDietPlanState();
}

class _AppBarViewDietPlanState extends State<AppBarViewDietPlan> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 11,
        child: const Center(
          child: Column(
            children: [
              BoldTextView(
                data: 'Diet Plan',
                fontSize: 18,
                bottomPadding: 20,
                topPadding: 20,
              ),
              Divider(
                height: 2,
                color: AppColors.blackColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}