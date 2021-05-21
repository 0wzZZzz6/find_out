import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              // height: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "assets/images/rolands-varsbergs-miKmVyq3qhE-unsplash.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              left: 125,
              child: Container(
                height: 120,
                width: 180,
                decoration: BoxDecoration(
                  // color: Colors.red,
                  image: DecorationImage(
                    image: AssetImage('assets/images/find_out.png'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
