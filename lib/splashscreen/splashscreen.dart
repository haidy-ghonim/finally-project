import 'dart:async';

import 'package:flutter/material.dart';
import 'package:joureny/login/signin_first.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  static const String splash = "splashScreen";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 6),
            () {Navigator.pushReplacementNamed(context,SignIn.signin);
        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Center(
            child: Lottie.network('https://lottie.host/660cdad7-44cc-4aeb-abad-3a53d30fefbd/yieiIQg2eG.json',
              width:350 ,
              height: 350,
            ),),
        ),
      ),
    );
  }
}