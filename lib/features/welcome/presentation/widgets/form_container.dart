import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bloc/welcome_bloc.dart';
import 'login_form.dart';
import 'registration_form.dart';

class FormContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: BlocBuilder<WelcomeBloc, WelcomeState>(
        builder: (context, state) {
          if (state.buttonType == 'register')
            return RegistrationForm();
          else
            return LoginForm();
        },
      ),
    );
  }
}
