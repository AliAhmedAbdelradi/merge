import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return    Scaffold(
      backgroundColor: Color(0xFF89C9FF),
      body: Center(child: Image(image: AssetImage("assets/images/new_logo.png"),height: 300.w,width: 300.h,)),

    );
  }
  SplashNavigator(){
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => Welcome1Splash(),
        transitionDuration: Duration(seconds: 2),
        transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
      ),
    );
  }
}
