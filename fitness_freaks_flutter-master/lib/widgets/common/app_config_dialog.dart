import 'package:fitness_freaks/configs/app_colors.dart';
import 'package:fitness_freaks/widgets/common/button_view.dart';
import 'package:fitness_freaks/widgets/common/text_view.dart';
import 'package:flutter/material.dart';

class AppConfigDialog extends StatelessWidget {
  const AppConfigDialog(
      {Key? key,
      required this.forceUpdate,
      required this.playStoreURL,
      required this.url,
      required this.mainContext})
      : super(key: key);

  final bool forceUpdate;
  final String playStoreURL;
  final String url;
  final BuildContext mainContext;

  @override
  Widget build(BuildContext context) {
    return Dialog(
        backgroundColor: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const BoldTextView(
                  data: "New update arrived!",
                  textAlign: TextAlign.center,
                  fontSize: 16,
                  textColor: AppColors.whiteColor,
                  bottomPadding: 15,
                ),
                const RegularTextView(
                  data:
                      "New version of app is now available on play store please do update for better experience!",
                  textAlign: TextAlign.center,
                  textColor: AppColors.greyColor,
                  bottomPadding: 15,
                ),
                forceUpdate
                    ? SizedBox(
                        width: 100,
                        child: ButtonView(
                          onTap: () {},
                          buttonName: "Update",
                        ),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 100,
                            child: ButtonView(
                              onTap: () {},
                              buttonName: "Update",
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            child: ButtonView(
                              onTap: () {},
                              buttonName: "OK",
                            ),
                          ),
                        ],
                      ),
              ],
            ),
          ),
        ));
  }
}
