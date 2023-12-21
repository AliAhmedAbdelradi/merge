
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app2/home_screen/HomeScreen.dart';
import 'Welcome3.dart';

class Welcome2Splash extends StatelessWidget {
  static const String routeName = "w2";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              child: SingleChildScrollView(
                child: Column(
                  children: [

                    Container(
                      height: 250,
                      margin: EdgeInsets.only(left: 10,top: 50),
                      child: Row(
                        children: [
                          Expanded(
                            child: Image(
                                image: AssetImage("assets/images/Nomads Road Trip.png",),
                                fit: BoxFit.cover,
                                height: 400.w,
                                width: 300.h),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 4, top: 120),
                      child: Text(textAlign: TextAlign.center,
                        "You Can Request a Driver To Take You From Airport To Your Tourist Destination to Discover the Land Marks of Egypt",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 90.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, Welcome3splash.routeName);

                            },
                            style: ButtonStyle(
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(30)))),
                            child: Text(
                              "Continue",
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
      ),
    );
  }
}
