import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app2/login_screen/login.dart';

class SignUpScreen extends StatelessWidget {
  static const String routeName="signup";

  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,



        centerTitle: true,
        title: Text("Create Account",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
      ),

      backgroundColor: const Color(0xFF89C9FF),
      body: Card(
        elevation: 0,
        margin: EdgeInsets.only(top: 50),
        color: Colors.white,
        shape: const OutlineInputBorder(
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
                SizedBox(height: 30.h,),
                //Logo app
                  Center(
                    child: Image(
                      image: AssetImage("assets/images/new_logo.png"),
                      width: 100.w,
                      height: 100.h,
                    )),
                //Text sign In
                SizedBox(height: 20,),

                //TextFormField Email
                Container(
                  width: 312.w,
                  height: 66.h,
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(

                    obscureText: false,
                    decoration: const InputDecoration(
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
                        prefixIcon: Icon(
                          Icons.account_circle,
                          size: 20,
                        ),
                        hintStyle:
                        TextStyle(height: 3.5,fontSize: 16, color: Colors.black26),
                        hintText: "user name"),
                  ),
                ),
                Container(
                  width: 312.w,
                  height: 66.h,
                  padding: const EdgeInsets.all(10),
                  child: TextFormField( keyboardType: TextInputType.emailAddress,
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
                        prefixIcon: Icon(
                          Icons.email,
                          size: 18,
                        ),
                        hintStyle:
                        TextStyle(height: 3.5.h,fontSize: 16, color: Colors.black26),
                        hintText: "Email"),
                  ),
                ),



                //TextFormField Password
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
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            borderSide:
                            BorderSide(color: Colors.black26, width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            borderSide:
                            BorderSide(color: Colors.black26, width: 1)),
                        focusColor: Colors.black26,
                        prefixIcon: Icon(
                          Icons.password,
                          size: 18,
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          size: 18,
                        ),
                        suffixIconColor: Colors.black26,
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(50))),
                        hintStyle:
                        TextStyle(height: 3.5,fontSize: 16, color: Colors.black26),
                        hintText: "Password"),
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
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            borderSide:
                            BorderSide(color: Colors.black26, width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            borderSide:
                            BorderSide(color: Colors.black26, width: 1)),
                        focusColor: Colors.black26,
                        prefixIcon: Icon(
                          Icons.password,
                          size: 18,
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          size: 18,
                        ),
                        suffixIconColor: Colors.black26,
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(50))),
                        hintStyle:
                        TextStyle(height: 3.5,fontSize: 16, color: Colors.black26),
                        hintText: "Confirm Password"),
                  ),
                ),
                //Remember me & check box & Forget password
                 SizedBox(height: 30.h,),
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
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {


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
                  height: 10.h,
                ),
                //Google Logo
                const Center(
                    child: Image(
                        image: AssetImage("assets/images/Google Logo.png"))),
                //space
                  SizedBox(
                  height: 17.h,
                ),
                //Don’t have an account ?
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already  have an account ?",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),

                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, LoginScreen.routeName);

                      },
                      child: const Text(" Sign In",style: TextStyle(
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
