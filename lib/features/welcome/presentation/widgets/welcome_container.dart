import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/colors.dart';
import '../../../../core/helpers/constants.dart';
import '../../../../core/widgets/app_text.dart';
import '../../../../core/widgets/logo.dart';
import '../bloc/bloc/welcome_bloc.dart';
import 'welcome_button_group.dart';
import 'welcome_text.dart';

class WelcomeContainer extends StatelessWidget {
  final _image = "assets/images/federico-gutierrez-IqW8saasx0E-unsplash.jpg";

  final VoidCallback onOpenStack;
  final VoidCallback onCloseStack;

  const WelcomeContainer({
    Key? key,
    required this.onOpenStack,
    required this.onCloseStack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WelcomeBloc, WelcomeState>(
      listener: (context, state) {
        print('buttonType: ${state.buttonType}');
        print('isStackOpen: ${state.isStackOpen}');
      },
      builder: (context, state) {
        return Container(
          width: double.infinity,
          padding: EdgeInsets.all(35),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(_image),
              fit: BoxFit.cover,
            ),
            color: AppColors.primaryColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 120),
              Center(child: Logo()),
              SizedBox(height: 110),
              WelcomeText(),
              SizedBox(height: 120),
              Visibility(
                visible: !state.isStackOpen,
                child: WelcomeButtonGroup(
                  onOpenStack: onOpenStack,
                  onCloseStack: onCloseStack,
                ),
              ),
              Visibility(
                visible: state.isStackOpen,
                child: Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AppText(
                        text: state.buttonType == 'register'
                            ? Const.signUp
                            : Const.login,
                        fontSize: 18,
                        fontWeight: FontWeight.w100,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      AppText(
                        text: Const.swipeToBack,
                        fontSize: 14,
                        fontWeight: FontWeight.w100,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                        size: 32,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
