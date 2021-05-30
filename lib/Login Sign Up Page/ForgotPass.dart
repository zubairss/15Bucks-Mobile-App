import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  Color redColor = Color(0xFFFB5151);
  Color navBarIconColor = Color(0XFF4F3175);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "15Bucks",
                        style: GoogleFonts.poppins(
                            color: redColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 44),
                      ),
                      Text(
                        "Forgot Password",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600, fontSize: 30),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    children: [
                      TextFormField(
                        style: GoogleFonts.poppins(),
                        decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            contentPadding: EdgeInsets.all(0),
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Color(0xFFFB5151).withOpacity(0.5))),
                            // enabledBorder: InputBorder.none,
                            hintText: "Abcd@mail.com",
                            labelText: 'Email',
                            labelStyle: TextStyle(color: Colors.black),
                            prefixIcon: Container(
                              padding: EdgeInsets.all(15),
                              width: 50,
                              height: 50,
                              child: SvgPicture.asset(
                                'assets/svgs/profilePage/user.svg',
                                color: navBarIconColor,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black.withOpacity(0.3)),
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            color: redColor,
                            child: Text(
                              "Reset Password",
                              style: GoogleFonts.poppins(color: Colors.white),
                            ),
                            onPressed: () {}),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
