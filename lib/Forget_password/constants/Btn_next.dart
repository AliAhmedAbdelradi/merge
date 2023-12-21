import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BtnNExt extends StatelessWidget {

  Function Next;
  BtnNExt(this.Next, {super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.w,
      height: 40.h,
      child: ElevatedButton(
          onPressed: () {
            Next();

          },
          style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(Color(0xFFF89C9FF)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28.5)))),
          child: const Text(
            "Next",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          )),
    );
  }
}
