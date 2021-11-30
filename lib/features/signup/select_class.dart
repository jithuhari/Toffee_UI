import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toffee_ui_challenge/widget/pink_button.dart';

class SelectClass extends StatelessWidget {
  const SelectClass({Key? key}) : super(key: key);

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
                        'My Child is in ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )),
                ),
                PinkButton(
                  buttonText: 'Class 1',
                  onTap: () {
                    Get.toNamed('selectboyorgirl');
                  },
                ),
                PinkButton(
                  buttonText: 'Class 2',
                  onTap: () {
                    Get.toNamed('selectboyorgirl');
                  },
                ),
                PinkButton(
                  buttonText: 'Class 3',
                  onTap: () {
                    Get.toNamed('selectboyorgirl');
                  },
                ),
                PinkButton(
                  buttonText: 'Class 4',
                  onTap: () {
                    Get.toNamed('selectboyorgirl');
                  },
                ),
                const Expanded(child: SizedBox()),
                TextButton(
                  onPressed: () {
                    Get.toNamed('loginmail');
                  },
                  child: Text(
                    'Already has an account? Login',
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        color: Colors.black,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
