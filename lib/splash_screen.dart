import 'dart:async';

import 'package:flutter/material.dart';

import 'package:codefactory_app/onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //simulate delay before moving on to signup screen
    Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => const OnboardingScreen())));
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
         children: [
           Center(child: Image.asset('assets/images/splash_img.png')),
         /*  const Align(
             alignment: Alignment.bottomCenter,
             child: CircularProgressIndicator(
               color: Colors.green,
             // valueColor: AlwaysStoppedAnimation(Colors.deepOrangeAccent),
              // backgroundColor: Colors.yellow,
             ),
           ),*/

         ],
        ),
      ),
    );
  }
}
