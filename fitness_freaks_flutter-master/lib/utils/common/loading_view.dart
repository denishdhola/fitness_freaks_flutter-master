import 'package:fitness_freaks/configs/app_colors.dart';
import 'package:fitness_freaks/utils/navigation/page_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({Key? key, this.size = 60}) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitFadingGrid(
        color: AppColors.primaryColor,
        size: size,
      ),
    );
  }
}

showLoadingDialog({
  required BuildContext context,
}) {
  showDialog(
      barrierDismissible: false,
      useSafeArea: true,
      context: context,
      builder: (context) {
        return const Center(child: LoadingView());
      });
}

///showing snackbar
ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar(
  BuildContext context,
  String message,
) =>
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: Text(
        message,
      )),
    );

hideLoadingDialog({required BuildContext context}) {
  PageNavigator.pop(context: context);
}
