import 'package:ecomerce_app/CartPages/OrderSucessFullPage.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckOutPage extends StatefulWidget {
  @override
  _CheckOutPageState createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  Color containerColor = Color(0xFFD8D8D8);
  Color containerColorPink = Color(0xFFFFE2E2);
  Color navBarIconColor = Color(0XFF4F3175);
  bool vsbShippingCtn = true;
  bool vsbShippingEditCtn = false;
  bool vsbBillingCtn = true;
  bool vsbBillingEditCtn = false;
  bool switchValue = false;
  bool paymentDetails = false;
  bool payment = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "CheckOut",
          style: GoogleFonts.poppins(),
        ),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Text(
                            "Total",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Text(
                            "2 Total Items",
                            style: GoogleFonts.poppins(),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              "30\$",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  //-----------Shipping Container---------------
                  //-----------Shipping Container---------------
                  //-----------Shipping Container---------------
                  //-----------Shipping Container---------------
                  //-----------Shipping Container---------------
                  Container(
                    decoration: BoxDecoration(
                        color: containerColorPink,
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        Visibility(
                          visible: vsbShippingEditCtn,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Shipping Information",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Spacer(),
                                    MaterialButton(
                                      minWidth: 25,
                                      visualDensity: VisualDensity.compact,
                                      onPressed: () {
                                        setState(() {
                                          vsbShippingCtn = true;
                                          vsbShippingEditCtn = false;
                                        });
                                      },
                                      child: Text(
                                        "Cancel edit",
                                        style: GoogleFonts.poppins(),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  style: GoogleFonts.poppins(),
                                  decoration: InputDecoration(
                                      hintText: "Enter Address",
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 0),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          borderSide: BorderSide(
                                              color: Colors.transparent)),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent),
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
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Flexible(
                                      child: TextFormField(
                                        style: GoogleFonts.poppins(),
                                        decoration: InputDecoration(
                                            hintText: "Enter City",
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 15,
                                                    vertical: 0),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                                borderSide: BorderSide(
                                                    color: Colors.transparent)),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent),
                                              borderRadius:
                                                  BorderRadius.circular(25),
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
                                      child: TextFormField(
                                        style: GoogleFonts.poppins(),
                                        decoration: InputDecoration(
                                            hintText: "Enter State/Provice",
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 15,
                                                    vertical: 0),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                                borderSide: BorderSide(
                                                    color: Colors.transparent)),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent),
                                              borderRadius:
                                                  BorderRadius.circular(25),
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
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Flexible(
                                      child: TextFormField(
                                        style: GoogleFonts.poppins(),
                                        decoration: InputDecoration(
                                            hintText: "Enter Postal Code",
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 15,
                                                    vertical: 0),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                                borderSide: BorderSide(
                                                    color: Colors.transparent)),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent),
                                              borderRadius:
                                                  BorderRadius.circular(25),
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
                                      child: TextFormField(
                                        style: GoogleFonts.poppins(),
                                        decoration: InputDecoration(
                                            hintText: "Enter Country",
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 15,
                                                    vertical: 0),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                                borderSide: BorderSide(
                                                    color: Colors.transparent)),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent),
                                              borderRadius:
                                                  BorderRadius.circular(25),
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
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: TextFormField(
                                        style: GoogleFonts.poppins(),
                                        decoration: InputDecoration(
                                            hintText: "Enter Contact Number",
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 15,
                                                    vertical: 0),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                                borderSide: BorderSide(
                                                    color: Colors.transparent)),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent),
                                              borderRadius:
                                                  BorderRadius.circular(25),
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
                                    MaterialButton(
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      color: navBarIconColor,
                                      visualDensity: VisualDensity.compact,
                                      onPressed: () {},
                                      child: Text(
                                        "Save",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: vsbShippingCtn,
                    child: Container(
                      decoration: BoxDecoration(
                          color: containerColor,
                          borderRadius: BorderRadius.circular(12)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Shipping Information",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              MaterialButton(
                                minWidth: 25,
                                visualDensity: VisualDensity.compact,
                                onPressed: () {
                                  setState(() {
                                    vsbShippingEditCtn = true;
                                    vsbShippingCtn = false;
                                  });
                                },
                                child: Text(
                                  "edit",
                                  style: GoogleFonts.poppins(),
                                ),
                              ),
                            ],
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
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  //--------------Billing Container -------------
                  //--------------Billing Container -------------
                  //--------------Billing Container -------------
                  //--------------Billing Container -------------
                  //--------------Billing Container -------------
                  //--------------Billing Container -------------
                  //--------------Billing Container -------------
                  Container(
                    decoration: BoxDecoration(
                        color: containerColorPink,
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        Visibility(
                          visible: vsbBillingEditCtn,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Billing Information",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Spacer(),
                                    MaterialButton(
                                      minWidth: 25,
                                      visualDensity: VisualDensity.compact,
                                      onPressed: () {
                                        setState(() {
                                          vsbBillingCtn = true;
                                          vsbBillingEditCtn = false;
                                        });
                                      },
                                      child: Text(
                                        "Cancel edit",
                                        style: GoogleFonts.poppins(),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  style: GoogleFonts.poppins(),
                                  decoration: InputDecoration(
                                      hintText: "Enter Address",
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 0),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          borderSide: BorderSide(
                                              color: Colors.transparent)),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent),
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
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Flexible(
                                      child: TextFormField(
                                        style: GoogleFonts.poppins(),
                                        decoration: InputDecoration(
                                            hintText: "Enter City",
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 15,
                                                    vertical: 0),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                                borderSide: BorderSide(
                                                    color: Colors.transparent)),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent),
                                              borderRadius:
                                                  BorderRadius.circular(25),
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
                                      child: TextFormField(
                                        style: GoogleFonts.poppins(),
                                        decoration: InputDecoration(
                                            hintText: "Enter State/Provice",
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 15,
                                                    vertical: 0),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                                borderSide: BorderSide(
                                                    color: Colors.transparent)),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent),
                                              borderRadius:
                                                  BorderRadius.circular(25),
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
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Flexible(
                                      child: TextFormField(
                                        style: GoogleFonts.poppins(),
                                        decoration: InputDecoration(
                                            hintText: "Enter Postal Code",
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 15,
                                                    vertical: 0),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                                borderSide: BorderSide(
                                                    color: Colors.transparent)),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent),
                                              borderRadius:
                                                  BorderRadius.circular(25),
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
                                      child: TextFormField(
                                        style: GoogleFonts.poppins(),
                                        decoration: InputDecoration(
                                            hintText: "Enter Country",
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 15,
                                                    vertical: 0),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                                borderSide: BorderSide(
                                                    color: Colors.transparent)),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent),
                                              borderRadius:
                                                  BorderRadius.circular(25),
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
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: TextFormField(
                                        style: GoogleFonts.poppins(),
                                        decoration: InputDecoration(
                                            hintText: "Enter Contact Number",
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 15,
                                                    vertical: 0),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                                borderSide: BorderSide(
                                                    color: Colors.transparent)),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent),
                                              borderRadius:
                                                  BorderRadius.circular(25),
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
                                    MaterialButton(
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      color: navBarIconColor,
                                      visualDensity: VisualDensity.compact,
                                      onPressed: () {},
                                      child: Text(
                                        "Save",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: vsbBillingCtn,
                    child: Container(
                      decoration: BoxDecoration(
                          color: containerColor,
                          borderRadius: BorderRadius.circular(12)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Billing Information",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              MaterialButton(
                                minWidth: 25,
                                visualDensity: VisualDensity.compact,
                                onPressed: () {
                                  setState(() {
                                    vsbBillingCtn = false;
                                    vsbBillingEditCtn = true;
                                  });
                                },
                                child: Text(
                                  "edit",
                                  style: GoogleFonts.poppins(),
                                ),
                              ),
                            ],
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
                  ),
                  SizedBox(
                    height: 15,
                  ),
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
                                fillColor: containerColor,
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
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          borderSide: BorderSide(
                                              color: Colors.transparent)),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent),
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
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          borderSide: BorderSide(
                                              color: Colors.transparent)),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent),
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
                              Text(
                                "Save for future use",
                                style: GoogleFonts.poppins(),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              FlutterSwitch(
                                  activeIcon: Icon(
                                    FontAwesome.check,
                                  ),
                                  inactiveIcon: Icon(
                                    Icons.close,
                                  ),
                                  padding: 0,
                                  activeColor: navBarIconColor,
                                  showOnOff: false,
                                  duration: Duration(milliseconds: 500),
                                  value: switchValue,
                                  height: 20,
                                  width: 40,
                                  toggleSize: 20.5,
                                  onToggle: (bool value) {
                                    setState(() {
                                      switchValue = value;
                                    });
                                  }),
                              Spacer(),
                              MaterialButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  color: containerColor,
                                  elevation: 0,
                                  onPressed: () {},
                                  child: Text(
                                    "Add Card",
                                    style: GoogleFonts.poppins(
                                        color: navBarIconColor),
                                  ))
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
                                minWidth:
                                    MediaQuery.of(context).size.width / 1.8,
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
                    height: 15,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: MaterialButton(
                        minWidth: MediaQuery.of(context).size.width,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Colors.red,
                        onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => OrderSucessFullPage())),
                        child: Text(
                          "Pay Now",
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
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