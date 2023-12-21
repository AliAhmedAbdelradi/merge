
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../constants/IconButtonLeading.dart';
import '../constants/btn_verify.dart';

class CreateNewPass extends StatefulWidget {
  static const String routeName = "pass";

  const CreateNewPass({super.key});

  @override
  State<CreateNewPass> createState() => _CreateNewPassState();
}

class _CreateNewPassState extends State<CreateNewPass> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          actions:   [
            Image(
              image: AssetImage("assets/images/new_logo.png"),
                height: 40.h,width: 40.w
            )
          ],
          leading: IconButtonLeading(() {
            Navigator.pop(context);
          }),
          title: const Text(
            "Forget Password",
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
          )),
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Center(
                child: Text(
                  "Create a New Password",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
                SizedBox(
                height: 5.h,
              ),
                SizedBox(
                height: 30.h,
              ),
              Column(
                children: [
                  Container(
                    width: 312.w,
                    height: 55.h,
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              borderSide:
                                  BorderSide(color: Colors.black26, width: 1)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              borderSide:
                                  BorderSide(color: Colors.black26, width: 1)),
                          focusColor: Colors.black26,
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            size: 18,
                          ),
                          suffixIconColor: Colors.black26,
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          hintStyle: TextStyle(
                              height: 3.5, fontSize: 16, color: Colors.black26),
                          hintText: "Enter New Password"),
                    ),
                  ),
                  Container(
                    width: 312.w,
                    height: 55.h,
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              borderSide:
                                  BorderSide(color: Colors.black26, width: 1)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              borderSide:
                                  BorderSide(color: Colors.black26, width: 1)),
                          focusColor: Colors.black26,
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            size: 18,
                          ),
                          suffixIconColor: Colors.black26,
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          hintStyle: TextStyle(
                              height: 3.5, fontSize: 16, color: Colors.black26),
                          hintText: "Confirm New Password"),
                    ),
                  ),
                ],
              ),
                SizedBox(
                height: 50.h,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "2 of 2",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
                SizedBox(
                height: 15.h,
              ),
                Row(
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 8,
                    color: Color(0xFF89C9FF),
                    height: 8.h,
                         indent:15  ,
                  )),
                  Expanded(
                      child: Divider(
                    thickness: 8,
                    color: Color(0xFF89C9FF),
                    height: 8.h,

                        endIndent: 15,
                  ))
                ],
              ),
                SizedBox(
                height: 20.h,
              ),

              BtnVerify(
                  (){
                    AwesomeDialog(
                        context: context,
                        dialogType: DialogType.success,
                        animType: AnimType.leftSlide,
                        title: 'Congratulations !',titleTextStyle: const TextStyle(fontSize: 25),
                        desc: 'Password Reset successful\n You’ll be redirected to the \n login screen now',
                        descTextStyle:const TextStyle(fontSize: 15),

                    btnOkOnPress: () {},
                    )..show();


                  }

              )
            ],
          ),
        ),
      ),
    );
  }


 }


