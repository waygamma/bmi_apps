import 'package:bmi_app/pages/splash_page.dart';
import 'package:bmi_app/template/style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI APPS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: mainColor,
        bottomAppBarColor: mainColor,
      ),
      home: SplashPage(),
    );
  }
}
