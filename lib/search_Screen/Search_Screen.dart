import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchScreen extends StatelessWidget {
  static const String routeName = "Search";

  @override
  Widget build(BuildContext context) {
    return    Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: Container(
              margin: EdgeInsets.only(top: 7.h),
              width: 312.w,
              height: 60.h,
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                autofocus: true,
                decoration: InputDecoration(
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
                    prefixIcon: Icon(Icons.search),
                    hintStyle: TextStyle(
                        height: 5.h, fontSize: 16, color: Colors.black26),
                    hintText: "cairo tower"),
              ),
            ),
            leading: Icon(Icons.arrow_back, color: Colors.black87, size: 25),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.filter_alt,
                    color: Colors.black,
                  )),
              Image(image: AssetImage("assets/images/new logo.png")),
            ],
          ),
          body: Column(

            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image(
                    image: AssetImage("assets/images/tower.png"),
                    width: 328.w,
                    height: 370.h,
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 25, left: 305),
                      child: Icon(
                        Icons.favorite,
                        size: 30,
                        color: Colors.red,
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 41),
                    child: Text(
                      "Cairo Tower",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                      textDirection: TextDirection.ltr,
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 170.w),
                      child: Text("4,33")),
                  Icon(Icons.star,color: Colors.black87,size: 12,)
                ],

              ),
              SizedBox(height: 15.h)
              , Row(
                children: [
                  Container(
                    margin:EdgeInsets.only(left: 40.w),
                    child: Text(
                      "The Cairo Toweris a free-standing concrete tower  ",
                      style: TextStyle(fontSize: 14),),


                  )
                  ,
                ],
              ),
              SizedBox(height: 5.h),
              Row(
                children: [
                  Container(
                    margin:EdgeInsets.only(left: 40.w),
                    child: Text(
                      "in Cairo Egypt At 187 m (614 ft), it was the tallest  ",
                      style: TextStyle(fontSize: 14),),


                  )
                  ,
                ],
              ),
              SizedBox(height: 5.h),
              Row(
                children: [
                  Container(
                    margin:EdgeInsets.only(left: 40),
                    child: Text(
                      "the tallest structure in Egypt for 37 years until 1998",
                      style: TextStyle(fontSize: 14),),


                  )
                  ,
                ],
              )



            ],
          ),

    );
  }
}
