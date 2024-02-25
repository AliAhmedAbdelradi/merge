import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:tourism_app2/categories/cultural/cultural_categ.dart';
import 'package:tourism_app2/categories/cultural/leisure_categ.dart';
import 'package:tourism_app2/categories/cultural/Religious_categ.dart';
import 'package:tourism_app2/categories/cultural/medical_categ.dart';
import 'package:tourism_app2/favourte_screen/favourite_Screen.dart';
import 'package:tourism_app2/plan_type_screen/plan_type.dart';
import 'package:tourism_app2/search_screen/Search_Screen.dart';

import '../edit_profile/Edit_profile.dart';

class HomeScreen extends StatefulWidget {
  static final title = 'salomon_bottom_bar';
  static const String routeName = "HomeScreen";

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<HomeScreen> {
  var _currentIndex = 0;
  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      animationCurve: Curves.decelerate,
      animateChildDecoration: true,
      animationDuration: Duration(seconds: 2),
      backdropColor: Color(0xff89C9FF),
      drawer: SafeArea(
        child: Container(
          child: ListTileTheme(
            textColor: Colors.black,
            iconColor: Colors.black,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 128.0.w,
                  height: 128.0.h,
                  margin:   EdgeInsets.only(
                    top: 24.0,
                    bottom: 64.0,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration:   BoxDecoration(
                    shape: BoxShape.circle,

                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Edit_profile.routeName);
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/Circle.png',height: 80,

                        ),

                        Text(
                          "user name",
                          style: GoogleFonts.radioCanada(fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)
                        ),
                      ],
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, PlanType.routeName);
                      },
                      child: const Icon(Icons.airplanemode_active_sharp)),
                  title:   InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, PlanType.routeName);
                    },
                    child: Text('Trip Plans',
                        style: GoogleFonts.radioCanada(fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, FavouriteScreen.routeName);
                      },
                      child: const Icon(Icons.favorite)),
                  title:   InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, FavouriteScreen.routeName);
                    },
                    child: Text(
                      'Favourites',
                      style: GoogleFonts.radioCanada(fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.settings),
                  title:   Text('Settings',

                      style: GoogleFonts.radioCanada(fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
                ),

              ],
            ),
          ),
        ),
      ),
      child: Scaffold(
        
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(onPressed: (){


          }, icon: Icon(Icons.inbox)),

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
                Center(
                    child: Image(
                  image: AssetImage("assets/images/new_logo.png"),
                  width: 65,
                  height: 65,
                )),
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
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(10),
          child: SalomonBottomBar(
            currentIndex: _currentIndex,
            onTap: (i) => setState(() => _currentIndex = i),
            items: [
              SalomonBottomBarItem(
                icon: const Icon(Icons.home),
                title:
                    const Text("Home", style: TextStyle(color: Colors.black)),
                selectedColor: const Color(0xFF89C9FF),
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.car_rental_outlined),
                title: const Text("Car", style: TextStyle(color: Colors.black)),
                selectedColor: const Color(0xFF89C9FF),
              ),
              SalomonBottomBarItem(
                icon: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, SearchScreen.routeName);
                  },
                    child: const Icon(Icons.search)),
                title:
                    const Text("Search", style: TextStyle(color: Colors.black)),
                selectedColor: const Color(0xFF89C9FF),
              ),
              SalomonBottomBarItem(
                icon: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Edit_profile.routeName);
                    },
                    child: const Icon(Icons.person)),
                title: const Text("Profile",
                    style: TextStyle(color: Colors.black)),
                selectedColor: const Color(0xFF89C9FF),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text("Find Your category",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, CulturalCateg.routeName);
                  },
                  child: const Image(
                      image: AssetImage("assets/images/pyramids.png"))),
              SizedBox(
                height: 7.h,
              ),
              const Text("Cultural",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 7.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, LeisureCateg.routeName);
                      },
                      child: const Image(
                          image: AssetImage("assets/images/Leisure.png")),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, ReligiousCateg.routeName);
                      },
                      child: const Image(
                          image: AssetImage("assets/images/Religion.png")),
                    ),
                  )
                ],
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
              Center(
                  child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, MedicalCateg.routeName);
                      },
                      child: const Image(
                          image: AssetImage("assets/images/Medical.png")))),
              SizedBox(
                height: 7.h,
              ),
              const Text(
                "Medical",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )
            ]),
          ),
        ),
      ),
    );
  }
  void drawerControl(){
    _advancedDrawerController.showDrawer();
    setState(() {

    });
  }

}
