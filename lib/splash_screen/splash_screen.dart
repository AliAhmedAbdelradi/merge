import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tourism_app2/welcomScreens/Welcom%20one.dart';
class SplashScreen extends StatefulWidget {
 static const String routeName="splash";
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(const Duration(seconds: 3), SplashNavigator );
  }


  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: Color(0xFF89C9FF),
      body: Center(child: Image(image: AssetImage("assets/images/logo.png"),height: 300,width: 300,)),

    );
  }
  SplashNavigator(){
    Navigator.pushNamedAndRemoveUntil(context, Welcome1Splash.routeName,(route) => false,);
  }
}
