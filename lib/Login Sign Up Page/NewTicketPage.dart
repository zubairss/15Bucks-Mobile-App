import 'package:ecomerce_app/Login%20Sign%20Up%20Page/NewTicketSubmitPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NewTicketPage extends StatefulWidget {
  @override
  _NewTicketPageState createState() => _NewTicketPageState();
}

class _NewTicketPageState extends State<NewTicketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "New Ticket",
          style: GoogleFonts.poppins(fontSize: 20),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            FocusScope.of(context).unfocus();
          });
        },
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(15),
            height: MediaQuery.of(context).size.height * 0.90,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).orientation ==
                          Orientation.landscape
                      ? 0
                      : 15,
                ),
                TextFormField(
                  style: GoogleFonts.poppins(),
                  decoration: InputDecoration(
                      prefixIcon: Container(
                        padding: EdgeInsets.all(15),
                        child: SvgPicture.asset(
                          "assets/svgs/USER PROFILE 2.svg",
                        ),
                      ),
                      hintText: "Subject",
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.transparent)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(12))),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  minLines: 4,
                  maxLines: 6,
                  textInputAction: TextInputAction.newline,
                  keyboardType: TextInputType.multiline,
                  textAlignVertical: TextAlignVertical.center,
                  textAlign: TextAlign.center,
                  style:
                      GoogleFonts.poppins(color: Colors.black.withOpacity(1.0)),
                  decoration: InputDecoration(
                      hintStyle: GoogleFonts.poppins(
                          color: Colors.black.withOpacity(0.4)),

                      // hintMaxLines: 15,

                      hintText: "Message" +
                          "\n" +
                          "- If your message is about any order kindly mention the ORDER ID in this message",
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.transparent)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(12))),
                ),
                SizedBox(
                  height: 10,
                ),
                MaterialButton(
                    minWidth: MediaQuery.of(context).size.width,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    elevation: 0,
                    color: Color(0xFFDFDFDF),
                    child: Text(
                      "Attach a file",
                      style: GoogleFonts.poppins(),
                    ),
                    onPressed: () {}),
                Spacer(),
                MaterialButton(
                    minWidth: MediaQuery.of(context).size.width,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    elevation: 0,
                    color: Colors.red,
                    child: Text(
                      "Submit",
                      style: GoogleFonts.poppins(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => NewTicketSubmitPagePage()));
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
