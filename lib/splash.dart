import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:real_version/main.dart';

import '../../colors.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset(
        'assets/logo_1.png',
      ),
      nextScreen: const Homepage(),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: bgcolor,
      centered: true,
      splashIconSize: 200,
      duration: 3000,
    );
  }
}
