import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PayMentDetailPage extends StatefulWidget {
  @override
  _PayMentDetailPageState createState() => _PayMentDetailPageState();
}

class _PayMentDetailPageState extends State<PayMentDetailPage> {
  Color containerColor = Color(0xFFD8D8D8);
  Color navBarIconColor = Color(0XFF4F3175);
  Color containerColorPink = Color(0xFFFFE2E2);
  bool payment = true;
  bool paymentDetails = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Payment Details",
          style: GoogleFonts.poppins(fontSize: 20),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              children: [
                Visibility(
                  visible: paymentDetails,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: containerColorPink,
                    ),
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Payment Details",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold)),
                            Spacer(),
                            MaterialButton(
                                minWidth: 30,
                                visualDensity: VisualDensity.compact,
                                onPressed: () {
                                  setState(() {
                                    payment = true;
                                    paymentDetails = false;
                                  });
                                },
                                child: Text(
                                  "Cancel",
                                  style: GoogleFonts.poppins(),
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          style: GoogleFonts.poppins(),
                          decoration: InputDecoration(
                              prefixIcon: Container(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: SvgPicture.asset(
                                  "assets/svgs/craditcard.svg",
                                  width: 40,
                                  height: 40,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              // hintText: "**** **** **** 4589",
                              labelText: "4525 8522 6874 2258",
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2, color: navBarIconColor),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(25))),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Flexible(
                              flex: 2,
                              child: TextFormField(
                                style: GoogleFonts.poppins(),
                                decoration: InputDecoration(
                                    hintText: "4/25",
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 0),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(25),
                                        borderSide: BorderSide(
                                            color: Colors.transparent)),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent),
                                        borderRadius:
                                            BorderRadius.circular(25))),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Flexible(
                              flex: 1,
                              child: TextFormField(
                                style: GoogleFonts.poppins(),
                                decoration: InputDecoration(
                                    hintText: "524",
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 0),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(25),
                                        borderSide: BorderSide(
                                            color: Colors.transparent)),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent),
                                        borderRadius:
                                            BorderRadius.circular(25))),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          style: GoogleFonts.poppins(),
                          decoration: InputDecoration(
                              hintText: "Zubair Shahid`",
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 0),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(25))),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Spacer(),
                            MaterialButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                color: navBarIconColor,
                                elevation: 0,
                                onPressed: () {},
                                child: Text("Save Card",
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                    )))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: payment,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Payment",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          style: GoogleFonts.poppins(),
                          decoration: InputDecoration(
                              prefixIcon: Container(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: SvgPicture.asset(
                                  "assets/svgs/craditcard.svg",
                                  width: 40,
                                  height: 40,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              // hintText: "**** **** **** 4589",
                              labelText: "**** **** **** 4589",
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2, color: navBarIconColor),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              filled: true,
                              fillColor: containerColor,
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(25))),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          style: GoogleFonts.poppins(),
                          decoration: InputDecoration(
                              prefixIcon: Container(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: SvgPicture.asset(
                                  "assets/svgs/VISA CARD.svg",
                                  width: 40,
                                  height: 40,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              // hintText: "**** **** **** 4589",
                              labelText: "**** **** **** 4589",
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2, color: navBarIconColor),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              filled: true,
                              fillColor: containerColor,
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(25))),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: MaterialButton(
                              elevation: 0,
                              minWidth: MediaQuery.of(context).size.width / 1.8,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              color: containerColor,
                              onPressed: () {
                                setState(() {
                                  paymentDetails = true;
                                  payment = false;
                                });
                              },
                              child: Text(
                                "Add new card",
                                style: GoogleFonts.poppins(),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                ),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  minWidth: MediaQuery.of(context).size.width,
                  color: Color(0xFFEF3B3B),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                  onPressed: () {},
                  child: Text(
                    "Delete",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
