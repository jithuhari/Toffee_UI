import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Align(
      alignment: Alignment.center,
      child: Lottie.asset(
        "assets/jsons/lottie/lottie_splash_screen.json",
        repeat: false,
        fit: BoxFit.fill,
        reverse: false,
        height: 400,
        width: 300,
        animate: true,
      ),
    ));
  }
}
