import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../home_screen/HomeScreen.dart';

class Edit_profile extends StatelessWidget {
  static const String routeName = "Edit_profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
              color: Colors.black),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox.shrink(),
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, HomeScreen.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Image(
                          image: AssetImage("assets/images/new_logo.png"),
                          width: 76.w,
                          height: 114.h,
                        ),
                      ),
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
            padding: EdgeInsets.all(30.0),
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
                          backgroundImage:
                              AssetImage("assets/images/Circle.png"),
                          maxRadius: 50,
                          backgroundColor: Colors.transparent,
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
                        "user name",
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
                  Container(
                    width: 330,
                    height: 48,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(25)),
                          fillColor: const Color(0x8086BFF6),
                          suffixIcon: Icon(Icons.done,size: 18),
                          filled: true,
                          hintText: "First name",
                          hintStyle: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(25)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide:
                                  const BorderSide(color: Colors.black26))),
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Container(
                    width: 330,
                    height: 48,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(25)),
                          fillColor: const Color(0x8086BFF6),
                          suffixIcon: Icon(Icons.done,size: 18),
                          filled: true,
                          hintText: "last name",
                          hintStyle: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(25)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide:
                                  const BorderSide(color: Colors.black26))),
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Container(
                    width: 330,
                    height: 48,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(25)),
                          fillColor: const Color(0x8086BFF6),
                          suffixIcon: Icon(Icons.done,size: 18),
                          filled: true,
                          hintText: "Country",
                          hintStyle: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(25)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide:
                                  const BorderSide(color: Colors.black26))),
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Container(
                    width: 330,
                    height: 48,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(25)),
                          fillColor: const Color(0x8086BFF6),
                          suffixIcon: Icon(Icons.done,size: 18),
                          filled: true,
                          hintText: "phone number",
                          hintStyle: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(25)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide:
                                  const BorderSide(color: Colors.black26))),
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Container(
                    width: 330,
                    height: 48,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(25)),
                          fillColor: const Color(0xFF8086BFF6),
                          suffixIcon: Icon(Icons.done,size: 20),
                          filled: true,
                          hintText: "E-mail",
                          hintStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(25)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide:
                                  const BorderSide(color: Colors.black26))),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
