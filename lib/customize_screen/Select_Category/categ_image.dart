import 'package:flutter/material.dart';

class CategImg extends StatelessWidget {
  CategImg(this.txt1,this.img1, {super.key}) ;
  String txt1;
  String img1;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 71,
      width: 348,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 0, color: Colors.black)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image(
              image: AssetImage(img1),
              height: 49,
              width: 88,
            ),
          ),
          SizedBox(width: 20,),
          Text( txt1,style: TextStyle(fontSize: 20,color: Colors.black),),
          SizedBox(width: 70,),
           Icon(Icons.done_all,size: 20,color: Colors.green,)
          
        ],
      ),
    );
  }
}
