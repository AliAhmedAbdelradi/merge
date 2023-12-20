
import 'package:flutter/material.dart';
import 'Welcome3.dart';

class Welcome2Splash extends StatelessWidget {
  static const String routeName = "w2";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [

              Container(
                height: 250,
                margin: EdgeInsets.only(left: 15,top: 50),
                child: Row(
                  children: [
                    Expanded(
                      child: Image(
                          image: AssetImage("assets/images/Nomads Road Trip.png",),
                          fit: BoxFit.cover,
                          height: 400,
                          width: 300),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 120),
                child: Text(textAlign: TextAlign.center,
                  "You Can Request a Driver To Take You From Airport To Your Tourist Destination to Discover the Land Marks of Egypt",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Container(
                  margin: EdgeInsets.only(left: 240, top: 120),
                  decoration: BoxDecoration(
                      color: Color(0xff68b0f5),
                      borderRadius: BorderRadius.circular(10)),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Welcome3splash.routeName);
                      },
                      child: Text(
                        "Continue",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
