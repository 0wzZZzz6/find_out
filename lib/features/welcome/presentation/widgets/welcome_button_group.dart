import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/app_button.dart';
import '../bloc/bloc/welcome_bloc.dart';

class WelcomeButtonGroup extends StatelessWidget {
  final VoidCallback onOpenStack;
  final VoidCallback onCloseStack;

  const WelcomeButtonGroup({
    Key? key,
    required this.onOpenStack,
    required this.onCloseStack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WelcomeBloc, WelcomeState>(
      builder: (context, state) {
        return Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppButton(
              text: 'Register',
              onPressed: () {
                onOpenStack();
                context.read<WelcomeBloc>().add(
                      WelcomeEvent.onButtonPressed(
                        isOpen: true,
                        buttonType: 'register',
                      ),
                    );
              },
              fontWeight: FontWeight.normal,
              fontSize: 16,
            ),
            AppButton(
              text: 'Login',
              onPressed: () {
                onOpenStack();
                context.read<WelcomeBloc>().add(
                      WelcomeEvent.onButtonPressed(
                        isOpen: true,
                        buttonType: 'login',
                      ),
                    );
              },
              fontWeight: FontWeight.normal,
              fontSize: 16,
            ),
          ],
        );
      },
    );
  }
}
