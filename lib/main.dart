import 'package:flutter/material.dart';
import 'package:joureny/login/signin_first.dart';
import 'package:joureny/login/signup_second.dart';
import 'package:joureny/splashscreen/splashscreen.dart';
import 'package:joureny/view/model.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider<Model>(create: (context)=>Model(),),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute:SplashScreen.splash,
          routes: {
          SplashScreen.splash:(context) => const SplashScreen(),
          SignIn.signin:(context)=>const SignIn(),
          SignUp.signup:(context)=>const  SignUp(),
          },

      ),
    );
  }
}
