import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerResolvePage extends StatefulWidget {
  @override
  _CustomerResolvePageState createState() => _CustomerResolvePageState();
}

class _CustomerResolvePageState extends State<CustomerResolvePage> {
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
                            text: "Resolve",
                            style: TextStyle(color: Colors.green)),
                      ]),
                ),
                Spacer(),
                Text(
                  "no new notification",
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
