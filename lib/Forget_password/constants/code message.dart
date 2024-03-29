import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CodeMassege extends StatelessWidget {
  const CodeMassege({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 9),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(10)),
      child: TextField(
        decoration: InputDecoration(

            counterText: "",
            border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black))),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 30),
        maxLength: 1,
      ),
      width: 55.w,
      height: 55.h,

    );
  }
}
