
import 'package:flutter/material.dart';
import 'package:tourism_app2/login_screen/login.dart';

import '../home_screen/HomeScreen.dart';

class Welcome3splash extends StatelessWidget {
  static const String routeName = "w3";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [

              Container(
                margin: EdgeInsets.only(left: 40, bottom: 35),
                child: Row(
                  children: [
                    Image(image: AssetImage("assets/images/Welcome3.png")),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 50),
                child: Text(
                  "Explore Egypt's Rich Heritagehistory and culturehistorical sitesmuseumsand landmarks.",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 200, top: 100),
                  decoration: BoxDecoration(
                      color: Color(0xff68b0f5),
                      borderRadius: BorderRadius.circular(10)),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(context, LoginScreen.routeName,(route) => false,);
                      },
                      child: Text(
                        "Let's Go start",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
