import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileSettingsPage extends StatefulWidget {
  @override
  _ProfileSettingsPageState createState() => _ProfileSettingsPageState();
}

class _ProfileSettingsPageState extends State<ProfileSettingsPage> {
  bool switchValue = false;
  Color redColor = Color(0xFFFB5151);
  Color navBarIconColor = Color(0XFF4F3175);
  bool obsecuretxt = true;
  Icon txtfieldicon = Icon(
    FontAwesomeIcons.solidEyeSlash,
    size: 15,
    color: Color(0XFF4F3175),
  );
  final FocusNode emailFieldFocus = FocusNode();
  final FocusNode passFieldFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          elevation: 00,
          backgroundColor: Colors.transparent,
          leading: RawMaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_sharp,
                size: 18,
              )),
          centerTitle: true,
          title: Text(
            "Profile Setting",
            style: GoogleFonts.poppins(),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          "https://health.wyo.gov/wp-content/uploads/2020/08/boy-with-cowboy-hat-and-mountains.jpg")),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Personal & Account Details",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  style: GoogleFonts.poppins(),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(0),
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Color(0xFFFB5151).withOpacity(0.5))),
                      // enabledBorder: InputBorder.none,
                      hintText: "Zubair Shahid",
                      labelText: 'Full Name',
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
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  style: GoogleFonts.poppins(),
                  decoration: InputDecoration(
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
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: obsecuretxt,
                  style: GoogleFonts.poppins(),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(0),
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Color(0xFFFB5151).withOpacity(0.5))),
                      hintText: "Enter Your password",
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.black),
                      prefixIcon: Container(
                        width: 50,
                        height: 50,
                        padding: EdgeInsets.all(15),
                        child: SvgPicture.asset(
                          'assets/svgs/profilePage/PASSWORD.svg',
                          color: navBarIconColor,
                        ),
                      ),
                      suffixIcon: MaterialButton(
                          visualDensity: VisualDensity.compact,
                          child: txtfieldicon,
                          onPressed: () {
                            setState(() {
                              if (obsecuretxt == true) {
                                txtfieldicon = Icon(
                                  FontAwesomeIcons.solidEye,
                                  size: 15,
                                  color: navBarIconColor,
                                );
                                obsecuretxt = false;
                              } else if (obsecuretxt == false) {
                                obsecuretxt = true;
                                txtfieldicon = Icon(
                                  FontAwesomeIcons.solidEyeSlash,
                                  size: 15,
                                  color: navBarIconColor,
                                );
                              }
                            });
                          }),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: TextInputType.number,
                  style: GoogleFonts.poppins(),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(0),
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Color(0xFFFB5151).withOpacity(0.5))),
                      // enabledBorder: InputBorder.none,
                      hintText: "090078601",
                      labelText: 'Contact Number',
                      labelStyle: TextStyle(color: Colors.black),
                      prefixIcon: Container(
                          padding: EdgeInsets.all(15),
                          width: 50,
                          height: 50,
                          child: Icon(
                            FontAwesome.phone,
                            color: navBarIconColor,
                          )),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Flexible(
                      child: TextFormField(
                        style: GoogleFonts.poppins(),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(0),
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Color(0xFFFB5151).withOpacity(0.5))),
                            // enabledBorder: InputBorder.none,
                            hintText: "DOB",
                            labelText: 'DOB',
                            labelStyle:
                                GoogleFonts.poppins(color: Colors.black),
                            prefixIcon: Container(
                              padding: EdgeInsets.all(15),
                              width: 50,
                              height: 50,
                              child: SvgPicture.asset(
                                'assets/svgs/profilePage/user.svg',
                                color: navBarIconColor,
                              ),
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      child: TextFormField(
                        style: GoogleFonts.poppins(),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(0),
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Color(0xFFFB5151).withOpacity(0.5))),
                            // enabledBorder: InputBorder.none,
                            hintText: "Male/Femaile/other etc",
                            labelText: 'Gender',
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
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Shipping Information",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                                borderRadius: BorderRadius.circular(25),
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
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
                        height: 10,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: TextFormField(
                              style: GoogleFonts.poppins(),
                              decoration: InputDecoration(
                                  hintText: "Enter City",
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
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(25))),
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
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(25))),
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
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(25))),
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
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(25))),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        keyboardType: TextInputType.number,
                        style: GoogleFonts.poppins(),
                        decoration: InputDecoration(
                            hintText: "Enter Contact Number",
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 0),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
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
                        height: 20,
                      ),
                      Text(
                        "Billing Information",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        style: GoogleFonts.poppins(),
                        decoration: InputDecoration(
                            hintText: "Enter Address",
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 0),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
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
                        height: 10,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: TextFormField(
                              style: GoogleFonts.poppins(),
                              decoration: InputDecoration(
                                  hintText: "Enter City",
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
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(25))),
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
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(25))),
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
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(25))),
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
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(25))),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        keyboardType: TextInputType.number,
                        style: GoogleFonts.poppins(),
                        decoration: InputDecoration(
                            hintText: "Enter Contact Number",
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 0),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(25))),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Same As Shipping",
                        style: GoogleFonts.poppins(),
                      ),
                      Switch(
                          activeColor: navBarIconColor,
                          value: switchValue,
                          onChanged: (onChanged) {
                            setState(() {
                              switchValue = onChanged;
                            });
                          })
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  minWidth: MediaQuery.of(context).size.width,
                  color: Color(0xFFEF3B3B),
                  elevation: 0,
                  child: Text(
                    "Save Settings",
                    style: GoogleFonts.poppins(color: Colors.white),
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
