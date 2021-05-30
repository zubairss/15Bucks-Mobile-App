import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewTicketSubmitPagePage extends StatefulWidget {
  @override
  _NewTicketSubmitPagePageState createState() =>
      _NewTicketSubmitPagePageState();
}

class _NewTicketSubmitPagePageState extends State<NewTicketSubmitPagePage> {
  Color navBarIconColor = Color(0XFF4F3175);
  Color redClr = Color(0XFFEF3B3B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Ticket Details",
          style: GoogleFonts.poppins(fontSize: 20),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(15),
            height: MediaQuery.of(context).size.height * 0.90,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text("#T42456",
                          style: GoogleFonts.poppins(
                              fontSize: 30, color: navBarIconColor)),
                      Text("4 March, 2021", style: GoogleFonts.poppins()),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Subject",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                ),
                Text(
                  "Order Not Received Yet",
                  style: GoogleFonts.poppins(),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            "Your Message",
                            textAlign: TextAlign.center,
                            style:
                                GoogleFonts.poppins(color: navBarIconColor),
                          ),
                          Spacer(),
                          Text(
                            "2nd March 2020 - 11:20:03",
                            textAlign: TextAlign.center,
                            style:
                                GoogleFonts.poppins(color: navBarIconColor),
                          ),
                        ],
                      ),
                      Text(
                        "I have not received my order yet, the order was registered under the order id '#sadas2', it has been 18 days since I  have placed the order. Kindly look into this issue.",
                        style: GoogleFonts.poppins(),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  color: redClr,
                  minWidth: MediaQuery.of(context).size.width,
                  onPressed: () {},
                  child: Text(
                    "Send Message",
                    style: GoogleFonts.poppins(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
