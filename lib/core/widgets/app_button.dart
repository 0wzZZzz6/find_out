import 'package:find_out/core/helpers/colors.dart';
import 'package:flutter/material.dart';

import 'package:find_out/core/helpers/enums.dart';
import 'package:find_out/core/widgets/app_text.dart';

class AppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final double width;
  final double height;
  final AppButtonStyle buttonStyle;

  AppButton({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    this.width = 120,
    this.height = 35,
    this.buttonStyle = AppButtonStyle.style1,
  }) : super(key: key);

  final _style1 = ButtonStyle(
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
        side: BorderSide(color: Colors.white),
      ),
    ),
  );

  final _style2 = ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: BorderSide(color: AppColors.primaryColor),
      ),
    ),
    backgroundColor: MaterialStateProperty.all<Color>(AppColors.primaryColor),
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        style: buttonStyle == AppButtonStyle.style1 ? _style1 : _style2,
        onPressed: onPressed,
        child: AppText(
          text: text,
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
