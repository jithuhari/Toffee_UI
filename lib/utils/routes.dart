import 'package:get/get.dart';
import 'package:toffee_ui_challenge/features/login/login_email.dart';
import 'package:toffee_ui_challenge/features/login/login_mobile.dart';
import 'package:toffee_ui_challenge/features/signup/child_name_screen.dart';
import 'package:toffee_ui_challenge/features/signup/select_boy_or_girl_screen.dart';
import 'package:toffee_ui_challenge/features/signup/select_class.dart';
import 'package:toffee_ui_challenge/features/signup/signup_email.dart';
import 'package:toffee_ui_challenge/features/splash/splash_screen.dart';
//import 'package:toffee_ui_challenge/features/splash/splash_screen.dart';
import 'package:toffee_ui_challenge/features/welcome/welcome_screen.dart';

List<GetPage> routes() => [
      GetPage(name: '/', page: () => const SplashScreen()),
      GetPage(name: '/welcomescreen', page: () => const WelcomeScreen()),
      GetPage(name: '/loginmail', page: () => const LoginWithMail()),
      GetPage(name: '/loginphone', page: () => const LoginWithMobile()),
      GetPage(name: '/selectclass', page: () => const SelectClass()),
      GetPage(name: '/selectboyorgirl', page: () => const SelectBoyOrGirl()),
      GetPage(name: '/childname', page: () => const ChildNameScreen()),
      GetPage(name: '/signupemail', page: () => const SignUpEmail()),
    ];
