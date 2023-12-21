import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourism_app2/home_screen/HomeScreen.dart';
import 'package:tourism_app2/forget_password/first_screen/forget%20password.dart';
import 'package:tourism_app2/signup_screen/signup.dart';

import '../Forget_password/constants/IconButtonLeading.dart';


class LoginScreen extends StatelessWidget {
  static const String routeName = "login";

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF89C9FF),


      ),
      backgroundColor: const Color(0xFF89C9FF),
      body: Card(

        margin: EdgeInsets.only(top: 50),
        color: Colors.white,
        shape:  OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(50),
                topLeft: Radius.circular(50),
                 )),
        child: Form(
          key: key,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: <Widget>[
                //Logo app
                Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                        child:  Image(
                  image: AssetImage("assets/images/new_logo.png"),
                  width: 100.w,
                  height: 100.h,
                ))),
                //Text sign In

                //password Email
                Container(
                    margin: const EdgeInsets.only(left: 10, top: 10),
                    child: const Text(
                      "Email",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
                //TextFormField Email
                Container(
                  width: 312.w,
                  height: 66.h,
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    decoration:   InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            borderSide: BorderSide(color: Colors.black26)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            borderSide: BorderSide(color: Colors.black26)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        prefixIcon: Icon(Icons.email,size: 20,),

                        hintStyle:
                        TextStyle(height: 3.5.h,fontSize: 16, color: Colors.black26),
                        hintText: "example@gmail.com"),
                  ),
                ),
                //password text
                Container(
                    margin: const EdgeInsets.only(left: 10, top: 10),
                    child: const Text(
                      "Password",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                //TextFormField Password
                Container(
                  width: 312,
                  height: 55,
                  padding:   EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextFormField(
                    obscureText: true,
                    decoration:   InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            borderSide:
                                BorderSide(color: Colors.black26, width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            borderSide:
                                BorderSide(color: Colors.black26, width: 1)),
                        focusColor: Colors.black26,
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          size: 20,
                        ),
                        prefixIcon: Icon(Icons.password,size: 20,),
                        suffixIconColor: Colors.black26,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        hintStyle:
                            TextStyle(height: 3.5.h,fontSize: 16, color: Colors.black26),
                        hintText: "Enter Password"),
                  ),
                ),
                //Remember me & check box & Forget password
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,


                  children: [
                    //Remember me & check box

                    //space

                    //Forget password
                    Container(
                      margin: EdgeInsets.only(right: 10,bottom: 10),

                      child: TextButton(
                        onPressed: () {
                          //forgot password screen
                        },
                        child: InkWell(
                          onTap: () {

                            Navigator.pushNamed(context, ForgetPassword.routeName);
                          },
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                                color: Color(0xFFBB0C0C),
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                //Button sign in
                Container(
                    width: 100.w,
                    height: 40.h,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                        style: const ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)))),
                            backgroundColor:
                                MaterialStatePropertyAll(Color(0xFF89C9FF))),
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                             Navigator.pushNamed(context, HomeScreen.routeName);

                        })),
                //space
                  SizedBox(
                  height: 20.h,
                ),
                //sign in with google
                const Row(
                  children: [
                    Expanded(
                        child: Divider(
                      color: Colors.black,
                      indent: 5,
                      endIndent: 5,
                    )),
                    Text(
                      "Or Connected With",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    Expanded(
                        child: Divider(
                      color: Colors.black,
                      indent: 5,
                      endIndent: 5,
                    )),
                  ],
                ),
                //space
                  SizedBox(
                  height: 20.h,
                ),
                //Google Logo
                const Center(
                    child: Image(
                        image: AssetImage("assets/images/Google Logo.png"))),
                //space
                  SizedBox(
                  height: 20.h,
                ),
                //Don’t have an account ?
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Text(
                  "Don’t have an account ?",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),

                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, SignUpScreen.routeName);

                  },
                  child: Text(" Sign Up",style: TextStyle(
                      color: Color(0xFF89C9FF),
                      fontWeight: FontWeight.bold,
                      fontSize: 16) ),
                ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
