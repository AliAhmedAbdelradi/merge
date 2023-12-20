import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

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
        drawer: const Drawer(elevation: 0.0, width: 27),
        appBar: AppBar(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50))),
            backgroundColor: const Color(0xff89C9FF),
            toolbarHeight: 97,
            centerTitle: true,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Image(image: AssetImage("assets/images/logo.png"))),

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
                  const Image(image: AssetImage("assets/images/pyramids.png")),
              Container(
                width: 90,
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
                    height: 7,
                  ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child:Image(
                        image: AssetImage(
                            "assets/images/Leisure.png")),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Expanded(
                        child:Image(
                            image: AssetImage(
                                "assets/images/Religion.png")),
                  ),
                  )],
              ),
              const SizedBox(
                height: 7,
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
                  const SizedBox(
                    height: 7,
                  ),
              const Center(child: Image(image: AssetImage("assets/images/Medical.png"))),
              const SizedBox(height: 7,),
              const Text("Medical",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
            ]),
          ),
        ),
      ),
    );
  }
}
