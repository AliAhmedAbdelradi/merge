
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../home_screen/HomeScreen.dart';


class Edit_profile extends StatelessWidget {
  static const String routeName="Edit_profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading:  IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back),color: Colors.black),

        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
           SizedBox.shrink(),
            InkWell(onTap: (){ Navigator.pushNamed(context, HomeScreen.routeName);}
                ,child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                      Image(image: AssetImage("assets/images/new_logo.png"),width: 65.w,height: 65.h,),
                  ],
                )),
            Container(

              child: const Text(
                "Done",
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff68b0f5),
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),


      ),
        body: Container(
      child: Padding(
        padding:   EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            children: [

                SizedBox(
                height: 13.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/Circle.png"),maxRadius:50 ,
                    ),
                  )
                ],
              ),
                SizedBox(
                height: 13.h,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Ahmed",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  )
                ],
              ),
                SizedBox(
                height: 10.h,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Change profile picture",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff2e75b0)),
                  )
                ],
              ),
                SizedBox(
                height: 50.h,
              ),
              const Row(
                children: [
                  Text(
                    "First name",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  )
                ],
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20)),
                    fillColor: const Color(0x8086BFF6),
                    filled: true,
                    hintText: "Ahmed",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.transparent))),
              ),
                SizedBox(
                height: 25.h,
              ),
              const Row(
                children: [
                  Text(
                    "last name",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  )
                ],
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20)),
                    fillColor: const Color(0x8086BFF6),
                    filled: true,
                    hintText: "mohamed",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.transparent))),
              ),
                SizedBox(
                height: 25.h,
              ),
              const Row(
                children: [
                  Text(
                    "phone number",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  )
                ],
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20)),
                    fillColor: const Color(0x8086BFF6),
                    filled: true,
                    hintText: "01205363977",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.transparent))),
              ),
                SizedBox(
                height: 25.h,
              ),
              const Row(
                children: [
                  Text(
                    "Email",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  )
                ],
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20)),
                    fillColor: const Color(0x8086BFF6),
                    filled: true,
                    hintText: "AhmedMohamed12@gmail.com",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.transparent))),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
