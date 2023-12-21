import 'package:flutter/material.dart';
import 'package:tourism_app2/login_screen/login.dart';

import '../home_screen/HomeScreen.dart';

class Welcome3splash extends StatelessWidget {
  static const String routeName = "w3";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Explore Egypt's Rich Heritage ",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        Text("history and culture",style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.normal)),
                        Text(" historical sites  ",style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.normal)),
                        Text("museums",style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.normal)),
                        Text("and land marks.",style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              LoginScreen.routeName,
                              (route) => false,
                            );
                          },
                          style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(30)))),

                          child: Text(
                            "Create Account",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 35,
                height: 12,
                decoration: BoxDecoration(
                    color:Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(width: 5,),
              Container(
                width: 35,
                height: 12,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(width: 5,),
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
