import 'package:find_out/core/helpers/colors.dart';
import 'package:find_out/core/widgets/app_text.dart';
import 'package:find_out/features/welcome/presentation/widgets/terms_checkbox.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/constants.dart';
import '../../../../core/helpers/enums.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class RegistrationForm extends StatelessWidget {
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AppTextFormField(
            controller: fullNameController,
            hintText: Const.fullName,
            icon: Icons.person,
          ),
          AppTextFormField(
            controller: emailController,
            hintText: Const.email,
            icon: Icons.email,
          ),
          AppTextFormField(
            controller: passwordController,
            hintText: Const.password,
            icon: Icons.lock,
            obscureText: true,
          ),
          SizedBox(height: 20),
          TermsCheckbox(),
          AppButton(
            text: 'Register',
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
