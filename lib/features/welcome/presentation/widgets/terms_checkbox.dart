import 'package:flutter/material.dart';

import '../../../../core/helpers/colors.dart';

class TermsCheckbox extends StatefulWidget {
  @override
  _TermsCheckboxState createState() => _TermsCheckboxState();
}

class _TermsCheckboxState extends State<TermsCheckbox> {
  bool? _checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        unselectedWidgetColor: AppColors.primaryColor,
      ),
      child: CheckboxListTile(
        title: RichText(
          text: TextSpan(
            text: 'Accept',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Clemente',
              fontWeight: FontWeight.normal,
              color: AppColors.secondaryTextColor,
            ),
            children: [
              TextSpan(
                text: ' terms and conditions',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Clemente',
                  fontWeight: FontWeight.normal,
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
        value: _checkboxValue,
        onChanged: (value) {
          setState(() {
            _checkboxValue = value;
          });
        },
        controlAffinity: ListTileControlAffinity.leading,
        activeColor: AppColors.primaryColor,
        checkColor: Colors.white,
      ),
    );
  }
}
