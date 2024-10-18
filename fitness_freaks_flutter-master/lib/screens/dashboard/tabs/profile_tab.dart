import 'dart:io';

import 'package:fitness_freaks/configs/app_colors.dart';
import 'package:fitness_freaks/configs/app_images.dart';
import 'package:fitness_freaks/widgets/common/image_selection_view.dart';
import 'package:fitness_freaks/widgets/common/profile_list_tile.dart';
import 'package:fitness_freaks/widgets/common/text_view.dart';
import 'package:fitness_freaks/widgets/navigation/app_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:image_picker/image_picker.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  File? _imageFile;
  final ImagePicker _picker = ImagePicker();
  Future<void> takePhoto(ImageSource source) async {
    XFile? image = await _picker.pickImage(source: source);
    if (image != null) {
      _imageFile = File(image.path);
      // uploadFile();
      setState(() {});
    }
  }

  // Future uploadFile() async {
  //   String uniqueFileName = DateTime.now().millisecondsSinceEpoch.toString();
  //   if (_imageFile == null) return;
  //   try {
  //     final ref = storage.ref().child('images').child(uniqueFileName);
  //     await ref.putFile(_imageFile!);
  //     imageURL = await ref.getDownloadURL();
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppBarView(),
        Expanded(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Stack(
                    children: [
                      const ImageSelectionView(),
                      Positioned(
                        top: 110,
                        right: 2,
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          decoration: const BoxDecoration(
                              color: AppColors.primaryColor,
                              shape: BoxShape.circle),
                          child: Container(
                            decoration: const BoxDecoration(
                                color: AppColors.whiteColor,
                                shape: BoxShape.circle),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                      context: context,
                                      builder: (builder) {
                                        return Container(
                                          height: 100,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          margin: const EdgeInsets.all(20),
                                          child: Column(
                                            children: [
                                              TextButton.icon(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                    takePhoto(
                                                        ImageSource.camera);
                                                  },
                                                  icon: const Icon(
                                                    Icons.camera,
                                                    color:
                                                        AppColors.primaryColor,
                                                  ),
                                                  label: const RegularTextView(
                                                    data: "Camera",
                                                    textColor:
                                                        AppColors.primaryColor,
                                                  )),
                                              TextButton.icon(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                    takePhoto(
                                                        ImageSource.gallery);
                                                  },
                                                  icon: const Icon(
                                                    Icons.image,
                                                    color:
                                                        AppColors.primaryColor,
                                                  ),
                                                  label: const RegularTextView(
                                                    data: "Gallery",
                                                    textColor:
                                                        AppColors.primaryColor,
                                                  )),
                                            ],
                                          ),
                                        );
                                      });
                                },
                                child: const Icon(
                                  IconlyLight.edit,
                                  size: 25,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Container(
                //   margin: const EdgeInsets.symmetric(horizontal: 15),
                //   height: 100,
                //   width: 100,
                //   decoration: BoxDecoration(
                //       shape: BoxShape.circle,
                //       //color: Colors.white,
                //       image: _imageFile == null
                //           ? const DecorationImage(
                //               image: AssetImage(AppImages.defaultProfile),
                //               fit: BoxFit.cover)
                //           : DecorationImage(
                //               image: FileImage(_imageFile!), fit: BoxFit.cover)),
                // ),
                const BoldTextView(
                  data: "Neel Sutariya",
                  fontSize: 20,
                  topPadding: 20,
                  bottomPadding: 25,
                ),
                const ProfileListTile(
                    title: "Languages", icon: AppImages.language),
                const ProfileListTile(
                    title: "Your Premium", icon: AppImages.premium),
                const ProfileListTile(
                    title: "Color Theme", icon: AppImages.color),
                const ProfileListTile(title: "QR Code", icon: AppImages.qrcode),
                const ProfileListTile(
                    title: "Refer Friends", icon: AppImages.persons),
                const ProfileListTile(title: "Rate", icon: AppImages.star),
                const ProfileListTile(title: "FNQ", icon: AppImages.star),
                const ProfileListTile(title: "FNQ", icon: AppImages.star),
                const ProfileListTile(title: "FNQ", icon: AppImages.star),
                const ProfileListTile(title: "FNQ", icon: AppImages.star),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
