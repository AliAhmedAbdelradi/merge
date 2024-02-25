import 'package:flutter/material.dart';

class TravSplash extends StatelessWidget {
  const TravSplash({super.key});


  @override
  Widget build(BuildContext context) {
    return   Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 60,
          height: 12,
          decoration: BoxDecoration(
              color: Color(0xFF89C9FF),
              borderRadius: BorderRadius.circular(20)),
        ),
        SizedBox(width: 5,),
        Container(
          width: 35,
          height: 12,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20)),
        ),
        SizedBox(width: 5,),
        Container(
          width: 35,
          height: 12,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20)),
        )
      ],
    );
  }
}
