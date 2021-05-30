import 'package:ecomerce_app/Login%20Sign%20Up%20Page/LoginPage.dart';
import 'package:ecomerce_app/Login%20Sign%20Up%20Page/SignUpPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class ProfilePageLoginFalse extends StatefulWidget {
  ProfilePageLoginFalse({Key key, this.visibleProfilePage}) : super(key: key);
  final bool visibleProfilePage;
  // ProfilePage({Key key, this._p}) : super(key: key);
  // final _pageController;
  @override
  _ProfilePageLoginFalseState createState() => _ProfilePageLoginFalseState();
}

class _ProfilePageLoginFalseState extends State<ProfilePageLoginFalse> {
  Color navBarIconColor = Color(0XFF4F3175);
  Color profilePageColor = Color(0XFF434345);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: profilePageColor,
      body: Container(
        // color: Colors.white,
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      "15Bucks",
                      style: GoogleFonts.poppins(
                          color: Color(0xFFEF3B3B),
                          fontSize: 66,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).orientation ==
                              Orientation.landscape
                          ? 30
                          : MediaQuery.of(context).size.height / 5.5,
                    ),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      minWidth: MediaQuery.of(context).size.width,
                      color: Color(0xFFF9A000),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                      onPressed: () {
                        pushNewScreen(context,
                            withNavBar: false, screen: LoginPage());
                      },
                      child: Text(
                        "Login",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    MaterialButton(
                      
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      minWidth: MediaQuery.of(context).size.width,
                      color: Color(0xFFEF3B3B),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                      onPressed: () {
                        pushNewScreen(context,
                            withNavBar: false, screen: SignUpPage());
                      },
                      child: Text(
                        "SignUp",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
