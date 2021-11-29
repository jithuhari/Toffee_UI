import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginWithMobile extends StatelessWidget {
  const LoginWithMobile({Key? key}) : super(key: key);

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
                      'Login Here',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: CountryCodePicker(
                    initialSelection: 'IN',
                    showFlag: false,
                    showDropDownButton: true,
                    alignLeft: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                      border: Border.all(color: Colors.white)),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      hintStyle:
                          TextStyle(color: Colors.grey, letterSpacing: 3),
                      hintText: 'Enter  your  PhoneNo',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40.0, 0, 40, 20),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.pink,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        onPressed: () {},
                        child: const Text(
                          'Continue',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  Get.toNamed('loginmail');
                },
                child: Text(
                  'Login with email',
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: Colors.black,
                      decoration: TextDecoration.underline),
                ),
              ),
              const Expanded(
                child: SizedBox(),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    Get.toNamed('selectclass');
                  },
                  child: Text(
                    'New user? Sign up now',
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        color: Colors.black,
                        decoration: TextDecoration.underline),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
