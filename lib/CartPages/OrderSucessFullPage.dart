import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderSucessFullPage extends StatefulWidget {
  @override
  _OrderSucessFullPageState createState() => _OrderSucessFullPageState();
}

class _OrderSucessFullPageState extends State<OrderSucessFullPage> {
  Color navBarIconColor = Color(0XFF4F3175);
  Color txtClr = Color(0xFFEF3B3B);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Text(
                    "Order Successful !",
                    style: GoogleFonts.poppins(fontSize: 24, color: txtClr),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Order ID",
                    style: GoogleFonts.poppins(),
                  ),
                  Text(
                    "#A2b4254",
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Items",
                    style: GoogleFonts.poppins(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ListTile(
                            contentPadding: EdgeInsets.zero,
                            visualDensity: VisualDensity.compact,
                            leading: Icon(Icons.fiber_manual_record,
                                size: 18, color: navBarIconColor),
                            title: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    children: [
                                      new Text(
                                        "RavPower 48W TypeC Car Charger",
                                        style: GoogleFonts.poppins(),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          new Text(
                                            "Color",
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Container(
                                              padding: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  color: Color(0XFFFFE2E2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              child: Text(
                                                "Black",
                                                style: GoogleFonts.poppins(),
                                              ))
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: new Text(
                                    "Qty 2",
                                    textAlign: TextAlign.right,
                                    style: GoogleFonts.poppins(),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: new Text(
                                    "15\$",
                                    textAlign: TextAlign.right,
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            )),
                        ListTile(
                            contentPadding: EdgeInsets.zero,
                            visualDensity: VisualDensity.compact,
                            leading: Icon(Icons.fiber_manual_record,
                                size: 18, color: navBarIconColor),
                            title: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      new Text(
                                        "RavPower 48W TypeC Car Charger",
                                        style: GoogleFonts.poppins(),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          new Text(
                                            "Color",
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Container(
                                              padding: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  color: Color(0XFFFFE2E2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              child: Text(
                                                "Black",
                                                style: GoogleFonts.poppins(),
                                              ))
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: new Text(
                                    "Qty 1",
                                    textAlign: TextAlign.right,
                                    style: GoogleFonts.poppins(),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: new Text(
                                    "15\$",
                                    textAlign: TextAlign.right,
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            )),
                        Divider(),
                        Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: new Text(
                                "Total",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold, color: txtClr),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: new Text(
                                "Qty 1",
                                textAlign: TextAlign.right,
                                style: GoogleFonts.poppins(color: txtClr),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: new Text(
                                "15\$",
                                textAlign: TextAlign.right,
                                style: GoogleFonts.poppins(
                                    color: txtClr, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Shipment Details",
                    style: GoogleFonts.poppins(
                      color: navBarIconColor,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Zubair Shahid",
                          style: GoogleFonts.poppins(),
                        ),
                        Text(
                          "zubairshahid814@gmail.com",
                          style: GoogleFonts.poppins(),
                        ),
                        Text(
                          "House M-814, Amarpura Rawalpindi , 46000",
                          style: GoogleFonts.poppins(),
                        ),
                        Text(
                          "Pakistan",
                          style: GoogleFonts.poppins(),
                        ),
                        Text(
                          "+923365356173",
                          style: GoogleFonts.poppins(),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  MaterialButton(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    minWidth: MediaQuery.of(context).size.width,
                    color: Color(0xFFF9A000),
                    elevation: 0,
                    child: Text(
                      "Save to Gallery",
                      style: GoogleFonts.poppins(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  MaterialButton(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    minWidth: MediaQuery.of(context).size.width,
                    color: txtClr,
                    elevation: 0,
                    child: Text(
                      "Confirm",
                      style: GoogleFonts.poppins(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
