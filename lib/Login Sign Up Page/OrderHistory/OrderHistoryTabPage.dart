// import 'package:ecomerce_app/Login%20Sign%20Up%20Page/NewTicketPage.dart';
import 'package:ecomerce_app/Login%20Sign%20Up%20Page/OrderHistory/OrderCompletePage.dart';
import 'package:ecomerce_app/Login%20Sign%20Up%20Page/OrderHistory/OrderActivePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderHistoryTabPage extends StatefulWidget {
  @override
  _OrderHistoryTabPageState createState() => _OrderHistoryTabPageState();
}

class _OrderHistoryTabPageState extends State<OrderHistoryTabPage> {
  int selectedPage = 0;

  List<String> historyOptions = [
    "Active",
    "Complete",
  ];
  List pages = [OrderActivePage(), OrderCompletePage()];

  Widget orderListBtn(int index) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedPage = index;
          });
        },
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: selectedPage == index
                    ? Color(0xFFFB5151)
                    : Color(0XFFC4C4C4)),
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
            child: Text(
              historyOptions[index],
              style: GoogleFonts.poppins(color: Colors.white),
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Order History",
          style: GoogleFonts.poppins(
            fontSize: 24,
          ),
        ),
      ),
      body: Container(
        // color: Colors.pink,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    orderListBtn(0),
                    orderListBtn(1),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    height: MediaQuery.of(context).size.height * 0.75,
                    child: pages[selectedPage],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
