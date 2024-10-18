import 'package:fitness_freaks/configs/app_colors.dart';
import 'package:fitness_freaks/widgets/common/text_view.dart';
import 'package:flutter/material.dart';

class DashboardCardView extends StatelessWidget {
  const DashboardCardView(
      {super.key, required this.imagePath, required this.data, this.onTap});

  final String imagePath;
  final String data;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 120,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 5),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SemiBoldTextView(
                      data: data,
                      textColor: AppColors.whiteColor,
                      fontSize: 22,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 160,
            child: Align(
                alignment: Alignment.bottomRight,
                child: Image.asset(imagePath)),
          ),
        ],
      ),
    );
    //   InkWell(
    //   onTap: onTap,
    //   child: Container(
    //     padding: const EdgeInsets.all(10),
    //     height: MediaQuery.of(context).size.width / 2.7,
    //     width: MediaQuery.of(context).size.width / 3.5,
    //     decoration: BoxDecoration(
    //       color: AppColors.primaryColor,
    //       borderRadius: BorderRadius.circular(20),
    //     ),
    //     child: Center(
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Image.asset(
    //             imagePath,
    //             height: 30,
    //           ),
    //           SemiBoldTextView(
    //             data: data,
    //             topPadding: 10,
    //             textColor: AppColors.whiteColor,
    //             textAlign: TextAlign.center,
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
