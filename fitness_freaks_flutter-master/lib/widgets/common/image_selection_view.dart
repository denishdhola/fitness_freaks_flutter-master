import 'dart:io';

import 'package:fitness_freaks/configs/app_colors.dart';
import 'package:fitness_freaks/configs/app_images.dart';
import 'package:fitness_freaks/utils/navigation/page_navigator.dart';
import 'package:fitness_freaks/widgets/common/profile_photo_view.dart';
import 'package:flutter/material.dart';

class ImageSelectionView extends StatelessWidget {
  const ImageSelectionView({Key? key, this.userPicture}) : super(key: key);
  final File? userPicture;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        PageNavigator.pushPage(
            context: context,
            page: ProfilePhotoView(
              image:
                  userPicture != null ? userPicture!.path : AppImages.profile,
            ));
      },
      child: Container(
        height: MediaQuery.of(context).size.width / 2.4,
        width: MediaQuery.of(context).size.width / 2.4,
        decoration: const BoxDecoration(
            color: AppColors.primaryColor, shape: BoxShape.circle),
        child: Center(
          child: Container(
              height: MediaQuery.of(context).size.width / 2.45,
              width: MediaQuery.of(context).size.width / 2.45,
              decoration: const BoxDecoration(
                  color: AppColors.whiteColor, shape: BoxShape.circle),
              child: userPicture != null
                  ? Container(
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: FileImage(userPicture!), fit: BoxFit.cover),
                      ),
                    )
                  : Container(
                      decoration: const BoxDecoration(
                        color: AppColors.primaryColor,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(AppImages.profile),
                            fit: BoxFit.cover),
                      ),
                    )),
        ),
      ),
    );
  }
}
