import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageShape extends StatelessWidget {
   MessageShape({super.key,  required this.txt, required this.icon, required this.txt2});
   String txt;
   IconData icon;
   String txt2;

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 290.w,
      height: 78.h,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xFF89C9FF),width: 3),
          borderRadius: BorderRadius.circular(22),
          color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(7),
        child: Row(

          children: [
            Container(

                margin: EdgeInsets.only(bottom: 5,left: 0),
                child: Icon(
                  icon ,
                  color: Colors.black,
                  size: 20,
                )),
            SizedBox(
              width: 50.w,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(bottom: 10,right:2.5),
                    child: Text(
                      txt,
                      style: TextStyle(fontSize: 15,color: Color(0xFF868686)),
                    )),
                Container(
                    margin: EdgeInsets.only(bottom: 5,right:0),
                    child: Text(txt2,style: TextStyle(fontSize: 15) ,)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
