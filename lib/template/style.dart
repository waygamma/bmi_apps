import 'package:flutter/material.dart';

var mainColor = Color.fromARGB(255, 62, 97, 255);

String nameApps = "BMI Apps";

ButtonStyle mainButton = ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(mainColor),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
    ),
  ),
);
