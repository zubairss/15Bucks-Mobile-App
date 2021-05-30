import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderDetailsPage extends StatefulWidget {
  @override
  _OrderDetailsPageState createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  Color txtClr = Color(0xFFEF3B3B);
  Color navBarIconColor = Color(0XFF4F3175);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Order Details",
          style: GoogleFonts.poppins(
            fontSize: 24,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(
                height: 10,
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
                                                  BorderRadius.circular(20)),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                                  BorderRadius.circular(20)),
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
                height: 20,
              ),
              Text(
                "Shipment Details",
                style: GoogleFonts.poppins(color: navBarIconColor),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Billing Information",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Zubair Shahid",
                      style: GoogleFonts.poppins(),
                    ),
                    Text(
                      "zubairshahid814@gmail.com",
                      style: GoogleFonts.poppins(),
                    ),
                    Text(
                      "House M-814, Amarpura Rawalpindi,"+" 46000",
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
                height: 30,
              ),
              MaterialButton(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  minWidth: MediaQuery.of(context).size.width,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Color(0XFFF9A000),
                  onPressed: () {},
                  child: Text(
                    "Save to Gallery",
                    style: GoogleFonts.poppins(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  minWidth: MediaQuery.of(context).size.width,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Color(0XFFEF3B3B),
                  onPressed: () {},
                  child: Text(
                    "Confirm",
                    style: GoogleFonts.poppins(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
