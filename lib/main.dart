import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toffee_ui_challenge/utils/routes.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: routes(),
    );
  }
}
