import 'package:find_out/core/helpers/enums.dart';
import 'package:find_out/core/widgets/app_button.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/constants.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class LoginForm extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AppTextFormField(
            controller: emailController,
            hintText: Const.email,
            icon: Icons.email,
          ),
          AppTextFormField(
            controller: passwordController,
            hintText: Const.password,
            icon: Icons.lock_rounded,
            obscureText: true,
          ),
          SizedBox(height: 20),
          AppButton(
            text: 'Log in',
            fontSize: 18,
            fontWeight: FontWeight.normal,
            onPressed: () {},
            buttonStyle: AppButtonStyle.style2,
            width: 200,
            height: 45,
          )
        ],
      ),
    );
  }
}
