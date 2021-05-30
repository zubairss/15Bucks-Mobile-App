import 'package:ecomerce_app/Login%20Sign%20Up%20Page/LoginPage.dart';
import 'package:ecomerce_app/Navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  Color redColor = Color(0xFFFB5151);
  Color navBarIconColor = Color(0XFF4F3175);
  bool obsecuretxt = true;
  Icon txtfieldicon = Icon(
    FontAwesomeIcons.solidEyeSlash,
    size: 15,
    color: Color(0XFF4F3175),
  );
  final FocusNode nameFieldFocus = FocusNode();
  final FocusNode emailFieldFocus = FocusNode();
  final FocusNode passFieldFocus = FocusNode();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  void submit() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("FullName", fullNameController.text);
    prefs.setString("email", emailController.text);
    prefs.setString("password", passController.text);
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => NavigationPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SafeArea(
          child: Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Text(
                        "15Bucks",
                        style: GoogleFonts.poppins(
                            color: redColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 44),
                      ),
                    ),
                    Text(
                      "SignUp",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 30),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      child: MaterialButton(
                        visualDensity: VisualDensity.compact,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        padding: EdgeInsets.symmetric(vertical: 10),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              alignment: Alignment.center,
                              // color: redColor,
                              child: SvgPicture.asset(
                                'assets/svgs/GOOGLE.svg',
                                width: 36,
                                height: 36,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                'Continue with Google',
                                style: GoogleFonts.poppins(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      child: RawMaterialButton(
                        visualDensity: VisualDensity.compact,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        padding: EdgeInsets.symmetric(vertical: 10),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              alignment: Alignment.center,
                              // color: redColor,
                              child: SvgPicture.asset(
                                'assets/svgs/FACEBOOK.svg',
                                width: 36,
                                height: 36,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                'Continue with Facebook',
                                style: GoogleFonts.poppins(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(children: <Widget>[
                      Expanded(
                          child: Divider(
                        color: Colors.black,
                        thickness: 1,
                      )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "Or Login with Email",
                          style: GoogleFonts.poppins(fontSize: 15),
                        ),
                      ),
                      Expanded(
                          child: Divider(
                        thickness: 1,
                        color: Colors.black,
                      )),
                    ]),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: fullNameController,
                      focusNode: nameFieldFocus,
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
                          hintText: "e.g Zubair Shahid",
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
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.3)),
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: emailController,
                      focusNode: emailFieldFocus,
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
                          hintText: "e.g Abcd@mail.com",
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
                      height: 20,
                    ),
                    TextFormField(
                      controller: passController,
                      obscureText: obsecuretxt,
                      focusNode: passFieldFocus,
                      style: GoogleFonts.poppins(),
                      decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          contentPadding: EdgeInsets.all(0),
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black)),
                          hintText: "Enter Your password",
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.black),
                          prefixIcon: Container(
                            padding: EdgeInsets.all(15),
                            width: 50,
                            height: 50,
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
                                  if (obsecuretxt) {
                                    txtfieldicon = Icon(
                                      FontAwesomeIcons.solidEye,
                                      size: 15,
                                      color: navBarIconColor,
                                    );
                                    obsecuretxt = false;
                                  } else {
                                    obsecuretxt = true;
                                    txtfieldicon = Icon(
                                      FontAwesomeIcons.solidEyeSlash,
                                      size: 15,
                                      color: navBarIconColor,
                                    );
                                  }
                                });
                              }),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.3)),
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      color: redColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      onPressed: () {
                        submit();
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Text('Sign In',
                            style: GoogleFonts.poppins(
                                fontSize: 16, color: Colors.white)),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: GoogleFonts.poppins(),
                        ),
                        RawMaterialButton(
                          elevation: 0.1,
                          visualDensity: VisualDensity.compact,
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
                          child: Text(
                            "Login",
                            style: GoogleFonts.poppins(
                                color: redColor, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )),
            ),
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
