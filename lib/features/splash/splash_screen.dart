import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    goToWelcome();
    super.initState();
  }

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

  Future<void> goToWelcome() async {
    await Future.delayed(
      const Duration(seconds: 5),
    );
    Get.toNamed('welcomescreen');
  }
}
