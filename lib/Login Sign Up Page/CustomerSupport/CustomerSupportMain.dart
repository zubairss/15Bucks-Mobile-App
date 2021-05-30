import 'package:ecomerce_app/Login%20Sign%20Up%20Page/CustomerSupport/CustomerSuppActivePage.dart';
import 'package:ecomerce_app/Login%20Sign%20Up%20Page/CustomerSupport/CutomerResolvePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ecomerce_app/Login%20Sign%20Up%20Page/NewTicketPage.dart';

class CustomerSupportMainPage extends StatefulWidget {
  @override
  _CustomerSupportMainPageState createState() =>
      _CustomerSupportMainPageState();
}

class _CustomerSupportMainPageState extends State<CustomerSupportMainPage> {
  int selectedPage = 0;
  List pages = [
    CustomerSuppActivePage(),
    CustomerResolvePage(),
  ];
  List<String> options = [
    "Active",
    "Resolve",
  ];
  Widget optionsfunction(int index) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedPage = index;
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: selectedPage == index
                  ? Color(0xFFFB5151)
                  : Color(0XFFC4C4C4)),
          child: Text(
            options[index],
            style: GoogleFonts.poppins(color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Customer Support",
          style: GoogleFonts.poppins(fontSize: 20),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Container(
            // height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    optionsfunction(0),
                    optionsfunction(1),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    padding: EdgeInsets.all(18),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    height: MediaQuery.of(context).size.height * 0.71,
                    child: pages[selectedPage],
                  ),
                ),
                // Spacer(),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: MaterialButton(
                    minWidth: MediaQuery.of(context).size.width,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    color: Color(0xFFF9A000),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NewTicketPage()));
                    },
                    child: Text(
                      "New Ticket",
                      style: GoogleFonts.poppins(color: Colors.white),
                    ),
                  ),
                )
                // Padding(
                //   padding:
                //       const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                //   child: MaterialButton(
                //       minWidth: MediaQuery.of(context).size.width,
                //       shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(100)),
                //       elevation: 0.4,
                //       color: Color(0xFFF9A000),
                //       child: Text(
                //         "New Ticket",
                //         style: GoogleFonts.poppins(color: Colors.white),
                //       ),
                //       onPressed: () {
                //         Navigator.push(context, MaterialPageRoute(builder: (context)=>NewTicketPage));
                //       }),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
