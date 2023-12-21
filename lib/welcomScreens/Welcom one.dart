
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app2/welcomScreens/Welcome%20two.dart';

class Welcome1Splash extends StatelessWidget {

  static const String routeName="w1";

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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Image(image: AssetImage("assets/images/Welcome1.png")),
                  Container(
                    margin: EdgeInsets.only(left: 40),
                    child: Text(
                      "popular destinations for beach and diving lovers.",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    margin: EdgeInsets.only(left: 40),
                    child: Text(
                      "Egypt's wonderful coasts on the Red Sea and the Mediterranean attractbeach and water sports lovers. Cities like Sharm El Sheikh and Hurghada ",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  SizedBox(height: 90.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Welcome2Splash.routeName);

                          },
                          style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(30)))),
                          child: Text(
                            "Let's Go started",textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),

                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 60,
                height: 12,
                decoration: BoxDecoration(
                    color: Color(0xFF89C9FF),
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
                width: 35,
                height: 12,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
              )
            ],
          ),

        ],
      ),
    );
  }
}
