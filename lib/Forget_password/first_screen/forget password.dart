import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/Btn_next.dart';
import '../constants/IconButtonLeading.dart';
import '../constants/shape_message.dart';
import '../second_screen/verify.dart';

class ForgetPassword extends StatelessWidget {
  static const String routeName = "forget";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Image(image: AssetImage("assets/images/new_logo.png"), height: 40,width: 40,)

        ],
         leading: IconButtonLeading(() {
    Navigator.pop(context);
    }),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [

              const Center(
                child: Text(
                  "Forgot Password ?",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                ),
              ),
                SizedBox(
                height: 10.h,
              ),
                Image(
                image: AssetImage("assets/images/Picture.png"),
                width: 180.w,
                height: 241.h,
              ),
                  SizedBox(
                height: 10.h,
              ),
              const Center(
                child: Column(
                  children: [
                    Text(
                      "Where would you like to receive a ",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 15),
                    ),
                    Text(
                      "Verification Code ?",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
                SizedBox(
                height: 35.h,
              ),

                SizedBox(
                height: 30.h,
              ),
             MessageShape(txt: "via Email", icon: Icons.mail, txt2: "lauran****@email.com9"),

                SizedBox(height: 80.h,),
              BtnNExt((){
                Navigator.pushNamed(context, Verify.routeName);

              })
            ],
          ),
        ),
      ),
    );
  }
}
