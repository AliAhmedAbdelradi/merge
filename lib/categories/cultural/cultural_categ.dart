import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Forget_password/constants/image_categ.dart';

class CulturalCateg extends StatelessWidget {
  static const String routeName = "Cultural";

  const CulturalCateg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);

          },
          icon: const Icon(
            Icons.arrow_back,
            size: 30,
          ),
          color: Colors.black,
        ),
        actions: [
          Image(
            image: const AssetImage("assets/images/new_logo.png"),
            width: 60.w ,
            height: 55.h,
          )
        ],
      ),
      body: Column(
        children: [
          Center(
              child: Text(
                "Cultural",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.normal, color: Colors.black, fontSize: 25),
              )),
          Container(
            width: 312.w,
            height: 66.h,
            padding: const EdgeInsets.all(10),
            child: TextFormField(


              decoration:   InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      borderSide: BorderSide(color: Colors.black26)),
                  focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      borderSide: BorderSide(color: Colors.black26)),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  prefixIcon: const Icon(
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
              mainAxisSpacing: 30,
              crossAxisCount: 2,

              children: <Widget>[
                ImageCateg("assets/images/Aswan.png","Aswan" ),
                ImageCateg("assets/images/Giza.png","Giza" ),
                ImageCateg("assets/images/R1.png","Luxor" ),
                ImageCateg("assets/images/Rectangle 6.png","Qena"),
                ImageCateg("assets/images/Rectangle 4.png","Cairo"),
                ImageCateg("assets/images/Rectangle 7.png","Sohag"),


              ],
            ),
          )
        ],
      ),
    );
  }
}
