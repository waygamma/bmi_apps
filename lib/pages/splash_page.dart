import 'dart:async';

import 'package:bmi_app/pages/home_page.dart';
import 'package:bmi_app/template/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashPage extends StatefulWidget {
  _SplashPage createState() => _SplashPage();
}

class _SplashPage extends State<SplashPage> {
  void initState() {
    super.initState();
    splashscreenStart();

    final style = SystemUiOverlayStyle(
      systemNavigationBarColor: mainColor,
      systemNavigationBarDividerColor: mainColor,
    );

    SystemChrome.setSystemUIOverlayStyle(style);
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.scale_outlined,
              size: 80.0,
              color: Colors.white,
            ),
            SizedBox(
              height: 24.0,
            ),
            Text(
              "BMI Apps",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
