import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toffee_ui_challenge/widget/pink_button.dart';
//import 'package:get/get.dart';

class ChildNameScreen extends StatelessWidget {
  const ChildNameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const Image(
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          image: AssetImage('assets/images/sky_bg.png'),
        ),
        SafeArea(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'My child\'s name is ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.grey.shade200,
                      border: Border.all(color: Colors.grey.shade200)),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      hintStyle:
                          TextStyle(color: Colors.grey, letterSpacing: 3),
                      hintText: 'Enter  your  child\'s name',
                    ),
                  ),
                ),
              ),
              PinkButton(
                  buttonText: 'Continue',
                  onTap: () {
                    Get.toNamed('signupemail');
                  })
            ],
          ),
        )
      ],
    ));
  }
}
