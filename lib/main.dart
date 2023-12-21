import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourism_app2/categories/cultural/cultural_categ.dart';
import 'package:tourism_app2/categories/cultural/medical_categ.dart';
import 'package:tourism_app2/edit_profile/Edit_profile.dart';
import 'package:tourism_app2/home_screen/HomeScreen.dart';
import 'package:tourism_app2/forget_password/first_screen/forget%20password.dart';
import 'package:tourism_app2/forget_password/second_screen/verify.dart';
import 'package:tourism_app2/forget_password/third_screen/create_new_password.dart';
import 'package:tourism_app2/login_screen/login.dart';
import 'package:tourism_app2/signup_screen/signup.dart';
import 'package:tourism_app2/splash_screen/splash_screen.dart';
import 'package:tourism_app2/welcomScreens/Welcom%20one.dart';
import 'package:tourism_app2/welcomScreens/Welcome%20two.dart';
import 'package:tourism_app2/welcomScreens/Welcome3.dart';

import 'categories/cultural/leisure_categ.dart';
import 'categories/cultural/leligious_categ.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
       designSize:Size(395,851) ,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: SplashScreen.routeName,
        routes: {



          SplashScreen.routeName: (context) => const SplashScreen(),
          LoginScreen.routeName: (context) => const LoginScreen(),
          SignUpScreen.routeName: (context) => SignUpScreen(),
          ForgetPassword.routeName: (context) => ForgetPassword(),
          Verify.routeName: (context) => const Verify(),
          CreateNewPass.routeName: (context) => CreateNewPass(),
          Welcome1Splash.routeName: (context) => Welcome1Splash(),
          Welcome2Splash.routeName: (context) => Welcome2Splash(),
          Welcome3splash.routeName: (context) => Welcome3splash(),
          HomeScreen.routeName: (context) =>HomeScreen(),
          Edit_profile.routeName: (context) =>Edit_profile(),
          MedicalCateg.routeName: (context) => MedicalCateg(),
          CulturalCateg.routeName: (context) => CulturalCateg(),
          LeisureCateg.routeName: (context) => LeisureCateg(),
          LeligiousCateg.routeName: (context) => LeligiousCateg(),
        },
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            elevation: 0,
            backgroundColor: Colors.transparent,
            centerTitle: true,
          ),
          textTheme: TextTheme(
              bodyLarge: GoogleFonts.radioCanada(
                  fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
              bodyMedium: GoogleFonts.radioCanada(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
              bodySmall: GoogleFonts.radioCanada(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black26)),
        ),
      ),
    );
  }
}
