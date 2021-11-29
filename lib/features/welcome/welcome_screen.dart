import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toffee_ui_challenge/utils/constants/welcome_screen_data.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Image(
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            image: AssetImage('assets/images/onboarding_bg.jpg'),
          ),
          SafeArea(
            child: Column(children: [
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                    Get.toNamed('loginmail');
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (int index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    itemCount: welcomeImages.length,
                    itemBuilder: (context, index) => WelcomePage(
                          title: welcomeTitles[index],
                          mainTitle: welcomeMainTitles[index],
                          description: welcomeDescription[index],
                          image: welcomeImages[index],
                        )),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.pink,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                onPressed: () {
                  Get.toNamed('selectclass');
                },
                child: const Text(
                  'Get Started',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}

class WelcomePage extends StatelessWidget {
  final String title;
  final String mainTitle;
  final String description;
  final String image;

  const WelcomePage(
      {Key? key,
      required this.title,
      required this.mainTitle,
      required this.description,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 250,
            height: 250,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.pink,
              fontSize: 16,
              //fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            mainTitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.pink,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
