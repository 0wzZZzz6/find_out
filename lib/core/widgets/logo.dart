import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 180,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/find_out.png'),
        ),
      ),
    );
  }
}
