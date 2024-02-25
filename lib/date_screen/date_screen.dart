import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class DateScreen extends StatefulWidget {
  const DateScreen({super.key});

  static const String routeName = "date";

  @override
  State<DateScreen> createState() => _DateScreenState();
}

class _DateScreenState extends State<DateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.cancel_outlined,
              color: Colors.black,
              size: 30,
            )),
        actions: [
          ImageIcon(
            AssetImage("assets/images/new_logo.png"),
            color: Colors.black,
            size: 50,
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Select your trips start date ",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.w600)),
            SizedBox(
              height: 10.h,
            ),
            Text("Step 5",
                style: GoogleFonts.poppins(
                    color: Colors.black38,
                    fontSize: 15,
                    fontWeight: FontWeight.w600)),
            SizedBox(
              height: 30,
            ),
            Text("Start date",
                style: GoogleFonts.poppins(
                    color: Colors.black38,
                    fontSize: 12,
                    fontWeight: FontWeight.w600)),
            Container(
              width: 343,
              height: 43,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 0, color: Colors.black)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("10 feb 2024", style: GoogleFonts.poppins(
                        fontSize: 15, fontWeight: FontWeight.w400),),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      selectDate(context);
                    },
                    child: Icon(
                      Icons.calendar_month, size: 22, color: Color(0xFF89C9FF),),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  selectDate(BuildContext context) {
    showDateRangePicker(
        context: context, firstDate: DateTime.now(), lastDate: DateTime.now().add(Duration(days: 31)));
  }
}
