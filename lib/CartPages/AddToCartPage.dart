import 'package:ecomerce_app/CartPages/CheckOutPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class AddToCartpage extends StatefulWidget {
  @override
  _AddToCartpageState createState() => _AddToCartpageState();
}

class _AddToCartpageState extends State<AddToCartpage> {
  int increment = 0;
  Widget productWidget() {
    plus() {
      setState(() {
        increment++;
      });
    }

    minus() {
      setState(() {
        increment--;
        if (increment < 0) {
          increment = 0;
        }
      });
    }

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsf1_wcQi1MVltFuEq8jwO8vw1doMtTbYgL-Rbvt0PT6IooDeFlmD07TzRdi5gZNhIkoM&usqp=CAU",
                          width: 80,
                          height: 80,
                        ),
                        Row(
                          children: [
                            InkWell(
                              customBorder: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              onTap: () {
                                minus();
                              },
                              highlightColor: Colors.grey[300],
                              child: Container(
                                padding: EdgeInsets.all(10),
                                child: Icon(
                                  FontAwesome.minus,
                                  size: 15,
                                ),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Text("$increment")),
                            InkWell(
                              customBorder: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              onTap: () {
                                plus();
                              },
                              highlightColor: Colors.grey[300],
                              child: Container(
                                padding: EdgeInsets.all(10),
                                child: Icon(
                                  FontAwesome.plus,
                                  size: 15,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    // color: Colors.pink,
                    width: MediaQuery.of(context).size.width / 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "RavPower 48W TypeCCar Charger",
                          style: GoogleFonts.poppins(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "Color",
                              style: GoogleFonts.poppins(),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xFFFFE2E2)),
                              child: Text(
                                "Black Black Black",
                                style: GoogleFonts.poppins(),
                              ),
                            )
                          ],
                        ),
                        Text(
                          "154\$",
                          style: GoogleFonts.poppins(),
                        ),
                        Row(
                          children: [
                            Container(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text("Remove From Cart")),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                                customBorder: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                onTap: () {
                                  // plus();
                                },
                                highlightColor: Colors.grey[300],
                                child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5),
                                    child: SvgPicture.asset(
                                      'assets/svgs/Group 271.svg',
                                      width: 20,
                                      height: 20,
                                    ))),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  List products = [Container()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      //   title: Text(
      //     "Cart",
      //     style: GoogleFonts.poppins(),
      //   ),
      //   centerTitle: true,
      // ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                productWidget(),
                productWidget(),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total Quantity",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "3",
                              style: GoogleFonts.poppins(),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Product Price",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "45\$",
                              style: GoogleFonts.poppins(),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ),
                            Text(
                              "45\$",
                              style: GoogleFonts.poppins(color: Colors.red),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  color: Colors.black,
                  minWidth: MediaQuery.of(context).size.width,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  onPressed: () {
                    pushNewScreen(context,
                    withNavBar: false,
                        screen: null,
                        customPageRoute: MaterialPageRoute(
                            builder: (context) => CheckOutPage()));
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) => CheckOutPage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text('Proceed to checkout',
                        style: GoogleFonts.poppins(
                            fontSize: 16, color: Colors.white)),
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
