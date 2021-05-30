import 'package:ecomerce_app/Login%20Sign%20Up%20Page/CustomerSupport/CustomerSupportMain.dart';
import 'package:ecomerce_app/Login%20Sign%20Up%20Page/OrderHistory/OrderHistoryTabPage.dart';
import 'package:ecomerce_app/Login%20Sign%20Up%20Page/PayMentDetail.dart';
import 'package:ecomerce_app/Login%20Sign%20Up%20Page/ProfileSettings.dart';
import 'package:ecomerce_app/Navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePageLoginTrue extends StatefulWidget {
  @override
  _ProfilePageLoginTrueState createState() => _ProfilePageLoginTrueState();
}

class _ProfilePageLoginTrueState extends State<ProfilePageLoginTrue> {
  Future removeData() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove("email");
    prefs.remove("password");
    prefs.remove("FullName");
  }

  @override
  void initState() {
    super.initState();
    this.removeData();
  }

  Color profilePageColor = Color(0XFF434345);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: profilePageColor,
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.81,
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                RawMaterialButton(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  onPressed: () {
                    pushNewScreen(context,
                        screen: null,
                        withNavBar: false,
                        customPageRoute: MaterialPageRoute(
                            builder: (context) => ProfileSettingsPage()));
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        child: SvgPicture.asset(
                          'assets/svgs/profilePage/user.svg',
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Profile Settings",
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 22))
                    ],
                  ),
                ),
                RawMaterialButton(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  onPressed: () {
                    pushNewScreen(context,
                        screen: null,
                        withNavBar: false,
                        customPageRoute: MaterialPageRoute(
                            builder: (context) => OrderHistoryTabPage()));
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        child: SvgPicture.asset(
                          'assets/svgs/profilePage/history.svg',
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Order History",
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 22))
                    ],
                  ),
                ),
                RawMaterialButton(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  onPressed: () {
                    pushNewScreen(context,
                        screen: null,
                        withNavBar: false,
                        customPageRoute: MaterialPageRoute(
                            builder: (context) => PayMentDetailPage()));
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        child: SvgPicture.asset(
                          'assets/svgs/profilePage/credit-card.svg',
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Payment Settings",
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 22))
                    ],
                  ),
                ),
                RawMaterialButton(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  onPressed: () {
                    pushNewScreen(context,
                        screen: null,
                        withNavBar: false,
                        customPageRoute: MaterialPageRoute(
                            builder: (context) => CustomerSupportMainPage()));
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        child: SvgPicture.asset(
                          'assets/svgs/profilePage/user.svg',
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Contact Support",
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 22))
                    ],
                  ),
                ),
                Spacer(),
                RawMaterialButton(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  onPressed: () async {
                    setState(() {
                      removeData();
                      pushNewScreen(context,
                          screen: null,
                          withNavBar: false,
                          customPageRoute: MaterialPageRoute(
                              builder: (context) => NavigationPage()));
                    });
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        child: SvgPicture.asset(
                          'assets/svgs/profilePage/logout.svg',
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Logout",
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 22))
                    ],
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
