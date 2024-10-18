import 'package:fitness_freaks/configs/app_text_style.dart';
import 'package:flutter/material.dart';

class RegularTextView extends StatelessWidget {
  const RegularTextView({
    Key? key,
    required this.data,
    this.rightPadding = 0,
    this.leftPadding = 0,
    this.topPadding = 0,
    this.bottomPadding = 0,
    this.fontWeight,
    this.textColor,
    this.fontSize,
    this.textAlign,
    this.textDecoration,
    this.maxLine,
  }) : super(key: key);

  final String data;
  final double rightPadding;
  final double leftPadding;
  final double topPadding;
  final double bottomPadding;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        right: rightPadding,
        left: leftPadding,
        top: topPadding,
        bottom: bottomPadding,
      ),
      child: Text(
        data,
        style: AppTextStyle.regularTextStyle.copyWith(
          color: textColor,
          fontWeight: fontWeight,
          fontSize: fontSize,
          decoration: textDecoration,
          overflow: TextOverflow.ellipsis,
        ),
        textAlign: textAlign,
        maxLines: maxLine,
      ),
    );
  }
}

class SemiBoldTextView extends StatelessWidget {
  const SemiBoldTextView(
      {Key? key,
      required this.data,
      this.rightPadding = 0,
      this.leftPadding = 0,
      this.topPadding = 0,
      this.bottomPadding = 0,
      this.fontWeight,
      this.textColor,
      this.fontSize,
      this.textAlign,
      this.textDecoration,
      this.maxLine})
      : super(key: key);

  final String data;
  final double rightPadding;
  final double leftPadding;
  final double topPadding;
  final double bottomPadding;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        right: rightPadding,
        left: leftPadding,
        top: topPadding,
        bottom: bottomPadding,
      ),
      child: Text(
        data,
        style: AppTextStyle.semiBoldTestStyle.copyWith(
            color: textColor,
            fontWeight: fontWeight,
            fontSize: fontSize,
            overflow: TextOverflow.ellipsis,
            decoration: textDecoration),
        textAlign: textAlign,
        maxLines: maxLine,
      ),
    );
  }
}

class BoldTextView extends StatelessWidget {
  const BoldTextView(
      {Key? key,
      required this.data,
      this.rightPadding = 0,
      this.leftPadding = 0,
      this.topPadding = 0,
      this.bottomPadding = 0,
      this.fontWeight,
      this.textColor,
      this.fontSize,
      this.textAlign,
      this.textDecoration,
      this.maxLine})
      : super(key: key);

  final String data;
  final double rightPadding;
  final double leftPadding;
  final double topPadding;
  final double bottomPadding;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        right: rightPadding,
        left: leftPadding,
        top: topPadding,
        bottom: bottomPadding,
      ),
      child: Text(
        data,
        style: AppTextStyle.boldTextStyle.copyWith(
            color: textColor,
            fontWeight: fontWeight,
            fontSize: fontSize,
            decoration: textDecoration),
        textAlign: textAlign,
        maxLines: maxLine,
      ),
    );
  }
}
