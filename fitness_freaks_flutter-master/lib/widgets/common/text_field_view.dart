import 'package:fitness_freaks/configs/app_colors.dart';
import 'package:fitness_freaks/configs/app_text_style.dart';
import 'package:fitness_freaks/widgets/common/text_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldView extends StatelessWidget {
  const TextFieldView({
    Key? key,
    required this.controller,
    this.hint = "",
    this.textFiledColor = AppColors.transparentColor,
    this.textFiledName,
    this.textInputType = TextInputType.text,
    this.cursorColor = AppColors.primaryColor,
    this.topPadding = 0,
    this.bottomPadding = 0,
    this.leftPadding = 0,
    this.rightPadding = 0,
    this.leftMargin = 0,
    this.rightMargin = 0,
    this.topMargin = 0,
    this.bottomMargin = 0,
    this.isReadOnly = false,
    this.isObscureText = false,
    this.iconWidget,
    this.iconPrefixWidget,
    this.onPrefixTap,
    this.onTap,
    this.maxLength,
    this.onChanged,
    this.inputFormatters,
  }) : super(key: key);

  final TextInputType textInputType;
  final TextEditingController controller;
  final String hint;
  final Color textFiledColor;
  final String? textFiledName;
  final Widget? iconWidget;
  final Widget? iconPrefixWidget;
  final Color cursorColor;
  final double topPadding;
  final double bottomPadding;
  final double leftPadding;
  final double rightPadding;
  final double leftMargin;
  final double rightMargin;
  final double topMargin;
  final double bottomMargin;
  final bool isReadOnly;
  final bool isObscureText;
  final Function()? onPrefixTap;
  final Function()? onTap;
  final void Function(String)? onChanged;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: leftMargin,
          right: rightMargin,
          top: topMargin,
          bottom: bottomMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textFiledName != null
              ? RegularTextView(
                  data: textFiledName!,
                  fontWeight: FontWeight.w500,
                  bottomPadding: 5)
              : Container(),
          Container(
            padding: EdgeInsets.only(
                top: topPadding,
                bottom: bottomPadding,
                left: leftPadding,
                right: rightPadding),
            decoration: BoxDecoration(
                color: textFiledColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: AppColors.primaryColor.withOpacity(0.50))),
            child: Row(
              children: [
                iconWidget ?? Container(),
                Expanded(
                  child: TextField(
                    maxLength: maxLength,
                    onTap: onTap,
                    onChanged: onChanged,
                    controller: controller,
                    readOnly: isReadOnly,
                    obscureText: isObscureText,
                    style: AppTextStyle.regularTextStyle
                        .copyWith(color: AppColors.blackColor, fontSize: 16),
                    decoration: InputDecoration(
                      counterText: "",
                      hintText: hint,
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 15),
                      hintStyle: AppTextStyle.regularTextStyle.copyWith(
                          color: AppColors.primaryColor.withOpacity(.5),
                          fontSize: 16),
                      focusColor: AppColors.primaryColor,
                    ),
                    inputFormatters: inputFormatters,
                    keyboardType: textInputType,
                    cursorColor: cursorColor,
                    obscuringCharacter: "•",
                  ),
                ),
                InkWell(
                    onTap: onPrefixTap, child: iconPrefixWidget ?? Container()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BigTextFieldView extends StatelessWidget {
  const BigTextFieldView({
    Key? key,
    required this.controller,
    this.title = "",
    this.hint = "",
    this.textInputType = TextInputType.multiline,
    this.cursorColor = AppColors.whiteColor,
    this.topPadding = 0,
    this.bottomPadding = 0,
    this.leftPadding = 0,
    this.rightPadding = 0,
    this.leftMargin = 0,
    this.rightMargin = 0,
    this.topMargin = 0,
    this.bottomMargin = 0,
    this.isReadOnly = false,
    this.isObscureText = false,
    this.iconWidget,
    this.iconPrefixWidget,
    this.onPrefixTap,
  }) : super(key: key);

  final TextInputType textInputType;
  final TextEditingController controller;
  final String title;
  final String hint;
  final Widget? iconWidget;
  final Widget? iconPrefixWidget;
  final Color cursorColor;
  final double topPadding;
  final double bottomPadding;
  final double leftPadding;
  final double rightPadding;
  final double leftMargin;
  final double rightMargin;
  final double topMargin;
  final double bottomMargin;
  final bool isReadOnly;
  final bool isObscureText;
  final Function()? onPrefixTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: leftMargin,
          right: rightMargin,
          top: topMargin,
          bottom: bottomMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SemiBoldTextView(
            data: title,
            textColor: AppColors.whiteColor,
            bottomPadding: 8,
          ),
          Container(
            padding: EdgeInsets.only(
                top: topPadding,
                bottom: bottomPadding,
                left: leftPadding,
                right: rightPadding),
            height: 100,
            decoration: BoxDecoration(
                color: AppColors.blackColor,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                iconWidget ?? Container(),
                Expanded(
                  child: TextField(
                    controller: controller,
                    readOnly: isReadOnly,
                    obscureText: isObscureText,
                    maxLines: null,
                    textInputAction: TextInputAction.newline,
                    style: AppTextStyle.regularTextStyle
                        .copyWith(color: AppColors.whiteColor, fontSize: 16),
                    decoration: InputDecoration(
                      hintText: hint,
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      hintStyle: AppTextStyle.regularTextStyle.copyWith(
                          color: AppColors.whiteColor.withOpacity(0.5),
                          fontSize: 16),
                      focusColor: AppColors.primaryColor,
                    ),
                    keyboardType: textInputType,
                    cursorColor: cursorColor,
                  ),
                ),
                InkWell(
                    onTap: onPrefixTap, child: iconPrefixWidget ?? Container()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DropDownTextFieldView extends StatefulWidget {
  const DropDownTextFieldView({
    Key? key,
    this.topPadding = 0,
    this.bottomPadding = 0,
    this.leftPadding = 15,
    this.rightPadding = 0,
    this.leftMargin = 0,
    this.rightMargin = 0,
    this.topMargin = 0,
    this.bottomMargin = 0,
    required this.hint,
    this.textFiledName,
    this.dropdownValue,
    this.items = const [],
    this.onChanged,
  }) : super(key: key);

  final double topPadding;
  final double bottomPadding;
  final double leftPadding;
  final double rightPadding;
  final double leftMargin;
  final double rightMargin;
  final double topMargin;
  final double bottomMargin;
  final String hint;
  final String? textFiledName;
  final String? dropdownValue;
  final List<String> items;
  final Function(String?)? onChanged;

  @override
  State<DropDownTextFieldView> createState() => _DropDownTextFieldViewState();
}

class _DropDownTextFieldViewState extends State<DropDownTextFieldView> {
  String? dropDownValue;

  @override
  void initState() {
    dropDownValue = widget.dropdownValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: widget.leftMargin,
          right: widget.rightMargin,
          top: widget.topMargin,
          bottom: widget.bottomMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.textFiledName != null
              ? RegularTextView(
                  data: widget.textFiledName!,
                  fontWeight: FontWeight.w500,
                  bottomPadding: 5)
              : Container(),
          Container(
            padding: EdgeInsets.only(
                top: widget.topPadding,
                bottom: widget.bottomPadding,
                left: widget.leftPadding,
                right: widget.rightPadding),
            decoration: BoxDecoration(
                color: AppColors.transparentColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: AppColors.primaryColor.withOpacity(0.50))),
            child: DropdownButton<String>(
              value: dropDownValue,
              onChanged: (v) {
                setState(() {
                  dropDownValue = v;
                  if (widget.onChanged != null) {
                    widget.onChanged!(v);
                  }
                });
              },
              items: widget.items
                  .map(
                    (items) => DropdownMenuItem(
                      value: items,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: RegularTextView(
                          data: items,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  )
                  .toList(),
              hint: RegularTextView(
                data: widget.hint,
                textColor: AppColors.greyColor,
                fontSize: 16,
              ),
              borderRadius: BorderRadius.circular(10),
              isExpanded: true,
              underline: Container(),
              icon: const Icon(
                Icons.arrow_drop_down_outlined,
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
