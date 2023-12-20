
import 'package:flutter/material.dart';
import 'package:tourism_app2/welcomScreens/Welcome%20two.dart';

class Welcome1Splash extends StatelessWidget {

  static const String routeName="w1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image(image: AssetImage("assets/images/Welcome1.png")),
              Container(
                margin: EdgeInsets.only(left: 40),
                child: Text(
                  "popular destinations for beach and diving lovers.",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(left: 40),
                child: Text(
                  "Egypt's wonderful coasts on the Red Sea and the Mediterranean attractbeach and water sports lovers. Cities like Sharm El Sheikh and Hurghada ",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                ),
              ),
              SizedBox(height: 90,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Welcome2Splash.routeName);

                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Let's Go ",
                              style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "start",
                              style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
