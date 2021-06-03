import 'package:flutter/material.dart';

import 'package:find_out/core/helpers/colors.dart';

class AppTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final IconData icon;

  const AppTextFormField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
    required this.icon,
  }) : super(key: key);

  @override
  _AppTextFormFieldState createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  late bool hidePassword = widget.obscureText;

  void onSuffixIconTapped() {
    setState(() {
      hidePassword = !hidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(12, 20, 12, 16),
        border: InputBorder.none,
        errorBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
        prefixIcon: Icon(
          widget.icon,
          color: AppColors.primaryColor,
        ),
        suffixIcon: widget.obscureText
            ? GestureDetector(
                onTap: onSuffixIconTapped,
                child: Icon(
                  hidePassword ? Icons.visibility : Icons.visibility_off,
                  color: AppColors.primaryColor,
                ),
              )
            : null,
        hintText: widget.hintText,
        hintStyle: TextStyle(
          fontSize: 18,
          fontFamily: 'Clemente',
          fontWeight: FontWeight.w200,
          color: AppColors.primaryTextColor,
        ),
      ),
      style: TextStyle(
        fontSize: 18,
        fontFamily: 'Clemente',
        fontWeight: FontWeight.w200,
        color: AppColors.primaryTextColor,
      ),
      cursorColor: AppColors.primaryColor,
      obscureText: hidePassword,
    );
  }
}
