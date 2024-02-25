import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShapePlan extends StatelessWidget {
  ShapePlan(this.img,this.txt, this.tab, {super.key});
  String img;
  String txt;
  Function tab;

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [

        Image(image: AssetImage(img)),
        Container(
            margin: EdgeInsets.only(top: 15,left: 20),
            child: Text(txt, style: GoogleFonts.poppins(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600),)),
        Container(
          margin: EdgeInsets.only(top: 100,left: 36),
          child: ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
                  maximumSize: MaterialStatePropertyAll(Size(247, 39)),
                  backgroundColor:
                  MaterialStatePropertyAll(Colors.white)),
              onPressed: () {},
              child: InkWell(
                onTap: () {
                  tab();
                },
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                        txt,
                        style: GoogleFonts.poppins(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600)
                    ),
                  ],
                ),
              )),
        )
      ],
    );
  }
}
