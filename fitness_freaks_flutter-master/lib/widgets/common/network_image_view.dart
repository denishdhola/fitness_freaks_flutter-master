import 'package:cached_network_image/cached_network_image.dart';
import 'package:fitness_freaks/configs/app_colors.dart';
import 'package:fitness_freaks/utils/common/loading_view.dart';
import 'package:flutter/material.dart';

class NetworkImageView extends StatelessWidget {
  const NetworkImageView(
      {Key? key,
      required this.imageUrl,
      this.borderRadius = 5,
      this.height,
      this.width,
      this.boxFit = BoxFit.cover,
      this.isAsset = false,
      this.placeholderLoadingSize = 40,
      this.errorIconSize = 30})
      : super(key: key);

  final String imageUrl;
  final double borderRadius;
  final double? height;
  final double? width;
  final double placeholderLoadingSize;
  final BoxFit boxFit;
  final bool isAsset;
  final double errorIconSize;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: isAsset
          ? Image.asset(
              imageUrl,
              height: height,
              width: width,
              fit: boxFit,
            )
          : CachedNetworkImage(
              imageUrl: imageUrl,
              width: width,
              height: height,
              imageBuilder: (context, imageProvider) => Image(
                  image: imageProvider,
                  fit: boxFit,
                  width: width,
                  height: height),
              placeholder: (context, url) => Center(
                  child: LoadingView(
                size: placeholderLoadingSize,
              )),
              errorWidget: (context, url, error) => Icon(Icons.error,
                  size: errorIconSize, color: AppColors.redColor),
            ),
    );
  }
}
