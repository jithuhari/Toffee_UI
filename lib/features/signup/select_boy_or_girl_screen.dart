import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toffee_ui_challenge/widget/pink_button.dart';

class SelectBoyOrGirl extends StatelessWidget {
  const SelectBoyOrGirl({Key? key}) : super(key: key);

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
                  padding: EdgeInsets.all(40.0),
                  child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        'My Child is a ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )),
                ),
                const Image(image: AssetImage('assets/images/boy.png')),
                PinkButton(
                  buttonText: 'Boy',
                  onTap: () {
                    Get.toNamed('childname');
                  },
                ),
                const Image(image: AssetImage('assets/images/girl.png')),
                PinkButton(
                  buttonText: 'Girl',
                  onTap: () {
                    Get.toNamed('childname');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
