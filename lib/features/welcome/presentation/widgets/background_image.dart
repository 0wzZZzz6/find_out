import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              "assets/images/federico-gutierrez-IqW8saasx0E-unsplash.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
