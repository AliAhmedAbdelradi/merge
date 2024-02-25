
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app2/home_screen/HomeScreen.dart';
import 'package:tourism_app2/welcomScreens/travel_splash.dart';
import 'Welcome3.dart';

class Welcome2Splash extends StatelessWidget {
  static const String routeName = "w2";

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
          Center(
            child: Image(
                image: AssetImage("assets/images/undraw_Exploring_re_grb8 (1) 1.png",),
                fit: BoxFit.cover,
                height: 460.w,
                width: 294.h),
          ),
          SizedBox(height: 20.h,),
          Text(textAlign: TextAlign.center,
            "You Can Request a Driver To Take You From Airport To Your Tourist Destination to Discover the Land Marks of Egypt",
            style: TextStyle(
                color: Colors.black87,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 80.h),
          Align(
            alignment: Alignment(0.8, 0),
            child: ElevatedButton(
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

                ),


            SizedBox(height: 5,),
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

      )
    );
  }
}
