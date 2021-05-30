import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerSuppActivePage extends StatefulWidget {
  @override
  _CustomerSuppActivePageState createState() => _CustomerSuppActivePageState();
}

class _CustomerSuppActivePageState extends State<CustomerSuppActivePage> {
  Color navBarIconColor = Color(0XFF4F3175);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
        decoration: BoxDecoration(
            border:
                Border(left: BorderSide(width: 3, color: navBarIconColor))),
        child: Column(
          mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "#T42456",
              style: GoogleFonts.poppins(color: navBarIconColor),
            ),
            SizedBox(
              height: 1,
            ),
            Row(
              children: [
                Text(
                  "Order Not Received Yet",
                  style: GoogleFonts.poppins(),
                ),
                Spacer(),
                Text(
                  "4 March, 2021",
                  style: GoogleFonts.poppins(),
                ),
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              children: [
                RichText(
                  text: TextSpan(
                      style: GoogleFonts.poppins(color: Colors.black),
                      children: [
                        TextSpan(
                            text: "Status: ",
                            style: TextStyle(color: Color(0xFFFB5151))),
                        TextSpan(
                            text: "Active",
                            style: TextStyle(color: Colors.green)),
                      ]),
                ),
                Spacer(),
                Text(
                  "1 new response",
                  style: GoogleFonts.poppins(color: Colors.red),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
