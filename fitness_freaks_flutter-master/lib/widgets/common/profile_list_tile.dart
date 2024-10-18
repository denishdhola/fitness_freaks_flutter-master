import 'package:fitness_freaks/configs/app_colors.dart';
import 'package:fitness_freaks/configs/app_images.dart';
import 'package:fitness_freaks/widgets/common/text_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({super.key, required this.title, required this.icon});

  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15, top: 15),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: SvgPicture.asset(
                    icon,
                    color: AppColors.primaryColor,
                    height: 25,
                  ),
                ),
                Expanded(
                    child: SemiBoldTextView(
                  data: title,
                  fontSize: 16,
                )),
                const Icon(CupertinoIcons.chevron_forward),
              ],
            ),
          ),
          const Divider(
            height: 2,
            color: AppColors.greyColor,
          ),
        ],
      ),
    );
  }
}
