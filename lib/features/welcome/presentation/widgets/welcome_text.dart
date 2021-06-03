import 'package:flutter/material.dart';

import '../../../../core/widgets/app_text.dart';

class WelcomeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: 'Welcome',
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: 5),
          AppText(
            text: 'Find out more!',
            fontSize: 16,
            fontWeight: FontWeight.w100,
          ),
        ],
      ),
    );
  }
}
