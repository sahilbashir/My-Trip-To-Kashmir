

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mytriptokashmir/Authentication/screens/welcome_screen.dart';
import 'package:mytriptokashmir/pages/secondary_pages/payment.dart';


class Splash extends StatelessWidget{


  const Splash({super.key});


  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      animationDuration: Duration(seconds: 2),
        duration: 2000,
        curve: Curves.easeInCirc,
        splashIconSize: 300,
        splash: Column(
      children: [
         LottieBuilder.asset("assets/img/a.json",height: 200,width: 500,),
      ],
    ),
        nextScreen: WelcomeScreen());
  }
}
