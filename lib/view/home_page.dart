import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                "assets/images/chair_pic.png",
                height: 50.h,
                width: 50.w,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Modern",
                  style: GoogleFonts.poppins(
                      fontSize: 32, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Text(
                  "Furniture",
                  style: GoogleFonts.poppins(
                      color: Colors.orange,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(
              "For You",
              style: GoogleFonts.poppins(
                  fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              "Comfortable chair with a contoures backrest \n made of the highest quality materials",
              style: GoogleFonts.poppins(
                color: Colors.grey.withOpacity(0.6),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(20.h, 10.w),
                primary: _changeButton == true
                    ? Colors.orange
                    : Colors.black.withOpacity(0.5),
              ),
              onPressed: () {
                setState(() {
                  _changeButton = true;
                });
              },
              child: Text(
                "Get Started",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
