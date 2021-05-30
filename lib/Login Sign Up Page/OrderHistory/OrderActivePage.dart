import 'package:ecomerce_app/Login%20Sign%20Up%20Page/OrderHistory/OrderDetails.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderActivePage extends StatefulWidget {
  @override
  _OrderActivePageState createState() => _OrderActivePageState();
}

class _OrderActivePageState extends State<OrderActivePage> {
  Color navBarIconColor = Color(0XFF4F3175);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => OrderDetailsPage()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    // color: Colors.pink,
                    border: Border(
                        left: BorderSide(width: 3, color: navBarIconColor))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "#A2b4254",
                      style: GoogleFonts.poppins(color: navBarIconColor),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "RavPower 48W TypeC Car Charger",
                                style: GoogleFonts.poppins(),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Color",
                                    style: GoogleFonts.poppins(),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 7, vertical: 2),
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFE2E2),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Text(
                                      "Black",
                                      style: GoogleFonts.poppins(),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            "Qty 2",
                            textAlign: TextAlign.right,
                            style: GoogleFonts.poppins(),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            "15\$",
                            textAlign: TextAlign.right,
                            style: GoogleFonts.poppins(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "RavPower 48W TypeC Car Charger",
                                style: GoogleFonts.poppins(),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Color",
                                    style: GoogleFonts.poppins(),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 7, vertical: 2),
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFE2E2),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Text(
                                      "Black",
                                      style: GoogleFonts.poppins(),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            "Qty 2",
                            textAlign: TextAlign.right,
                            style: GoogleFonts.poppins(),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            "15\$",
                            textAlign: TextAlign.right,
                            style: GoogleFonts.poppins(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    RichText(
                        text: TextSpan(
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                            ),
                            children: [
                          TextSpan(
                              text: "Status:",
                              style: TextStyle(color: Colors.red)),
                          TextSpan(
                              text: " Pending",
                              style: TextStyle(color: Colors.green)),
                        ])),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Divider(
              thickness: 2,
            ),
          ],
        ));
  }
}
