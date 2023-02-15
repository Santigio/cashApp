import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:splashscreen/splashscreen.dart';
import 'dart:async';

import 'src/ui/money_transfer_main_page.dart';
import 'src/ui/register_screen.dart';

void main() {
  runApp(GetMaterialApp(
    home: SplashScreenPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical: 10), // adjust the vertical padding here
          child: SplashScreen(
            seconds: 15,
            navigateAfterSeconds: RegisterPage(),
            backgroundColor: Colors.white,
            title: Text(
              'FinMate',
              textScaleFactor: 2,
            ),
            image: Image.network('https://i.ibb.co/MB92Gb0/unnamed.png'),
            photoSize: 50.0,
            loaderColor: Colors.red,
          ),
        ),
      ),
    );
  }
}

class MoneyTransferApp extends StatelessWidget {
  const MoneyTransferApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MoneyTransferMainPage(),
    );
  }
}
