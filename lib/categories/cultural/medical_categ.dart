import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Forget_password/constants/image_categ.dart';

class MedicalCateg extends StatelessWidget {
  static const String routeName = "Medical";

  const MedicalCateg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 30,
          ),
          color: Colors.black,
        ),
        actions: [
          Image(
            image: AssetImage("assets/images/new_logo.png"),
            width: 60.w,
            height: 55.h,
          )
        ],
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            "Medical",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.normal, color: Colors.black, fontSize: 25),
          )),
          Container(
            width: 312.w,
            height: 66.h,
            padding: const EdgeInsets.all(10),
            child: TextFormField(

              obscureText: true,
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
                    Icons.search,
                    size: 20,
                  ),
                  hintStyle:
                  TextStyle(height: 3.5.h,fontSize: 16, color: Colors.black26),
                  hintText: "City"),
            ),
          ),

          Expanded(
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(30),
              crossAxisSpacing: 20,
              mainAxisSpacing: 50,
              crossAxisCount: 2,

              children: <Widget>[
                ImageCateg("assets/images/siwa.png","Siwa" ),
                ImageCateg("assets/images/port.png","Port said" ),
                ImageCateg("assets/images/nwib3.png","Nuweiba" ),
                ImageCateg("assets/images/kharge.png","Kharga"),
                ImageCateg("assets/images/fayom.png","Cairo"),



              ],
            ),
          )
        ],
      ),
    );
  }
}
