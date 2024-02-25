import 'package:flutter/material.dart';
import 'package:tourism_app2/login_screen/login.dart';
import 'package:tourism_app2/welcomScreens/travel_splash.dart';

import '../home_screen/HomeScreen.dart';

class Welcome3splash extends StatelessWidget {
  static const String routeName = "w3";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: ImageIcon(
        AssetImage("assets/images/new_logo.png"),
        color: Colors.black,
      )),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Image(
            image: AssetImage("assets/images/City driver-rafiki 1.png"),
            width: 400,
            height: 350,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 60,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "You Can Request a Driver To Take You",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                    fontWeight: FontWeight.normal),
              ),
              Text("From His Plane To Your ",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.normal)),
              Text(" Touris Destination to Discover the  ",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.normal)),
              Text("Land Marks of Egypt",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.normal)),
            ],
          ),
          SizedBox(
            height: 120,
          ),
          Align(
            alignment: Alignment(.8, 0),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    LoginScreen.routeName,
                    (route) => false,
                  );
                },
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)))),
                child: Text(
                  "Create Account",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 35,
                height: 12,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 35,
                height: 12,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 60,
                height: 12,
                decoration: BoxDecoration(
                    color: Color(0xFF89C9FF),
                    borderRadius: BorderRadius.circular(20)),
              )
            ],
          ),
        ],
      ),
    );
  }
}
