import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:tourism_app2/categories/cultural/cultural_categ.dart';
import 'package:tourism_app2/categories/cultural/leisure_categ.dart';
import 'package:tourism_app2/categories/cultural/leligious_categ.dart';
import 'package:tourism_app2/categories/cultural/medical_categ.dart';

import '../edit_profile/Edit_profile.dart';

class HomeScreen extends StatefulWidget {
  static final title = 'salomon_bottom_bar';
  static const String routeName = "HomeScreen";

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<HomeScreen> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(elevation: 0.0, width: 27.w),
        appBar: AppBar(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50))),
            backgroundColor: const Color(0xff89C9FF),
            toolbarHeight: 97.h,
            centerTitle: true,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Image(image: AssetImage("assets/images/new_logo.png"),width: 65,height: 65,)),

              ],
            ),
            actions: [

              Container(
                margin: const EdgeInsets.only(right: 15),
                child: const Icon(
                  Icons.notifications,
                  size: 25,
                ),
              )
            ]),
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            SalomonBottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text("Home", style: TextStyle(color: Colors.black)),
              selectedColor: const Color(0xff89C9FF),
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.car_rental_outlined),
              title: const Text("Car", style: TextStyle(color: Colors.black)),
              selectedColor: const Color(0xff89C9FF),
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.search),
              title: const Text("Search", style: TextStyle(color: Colors.black)),
              selectedColor: const Color(0xff89C9FF),
            ),
            SalomonBottomBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Edit_profile.routeName);
                  },
                  child: const Icon(Icons.person)),
              title: const Text("Profile", style: TextStyle(color: Colors.black)),
              selectedColor: const Color(0xff89C9FF),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(28),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
              const Text("Find your favourite Trip",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10,),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, CulturalCateg.routeName);
                    },
                      child: const Image(image: AssetImage("assets/images/pyramids.png"))),
              Container(
                width: 90.w,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Cultural",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
                    SizedBox(
                    height: 7.h,
                  ),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child:InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, LeisureCateg.routeName);
                      },
                      child: Image(
                          image: AssetImage(
                              "assets/images/Leisure.png")),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                      child:InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, LeligiousCateg.routeName);
                        },
                        child: Image(
                            image: AssetImage(
                                "assets/images/Religion.png")),
                      ),
                  )],
              ),
                SizedBox(
                height: 7.h,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Leisure",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Religion",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
                    SizedBox(
                    height: 7.h,
                  ),
                Center(child: InkWell(

                  onTap: () {
                    Navigator.pushNamed(context, MedicalCateg.routeName);
                  },
                  child: Image(image: AssetImage("assets/images/Medical.png")))),
                SizedBox(height: 7.h,),
              const Text("Medical",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
            ]),
          ),
        ),
      ),
    );
  }
}
