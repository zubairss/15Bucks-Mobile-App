import 'package:ecomerce_app/CartPages/AddToCartPage.dart';
import 'package:ecomerce_app/HomePages/HomePageLoginFalse.dart';
import 'package:ecomerce_app/HomePages/HomePageLoginTrue.dart';
import 'package:ecomerce_app/Login%20Sign%20Up%20Page/ProfilePageLoginTrue.dart';
import 'package:ecomerce_app/Login%20Sign%20Up%20Page/profilePageLoginFalse.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NavigationPage extends StatefulWidget {
  final BuildContext menuScreenContext;
  final selectedPageAfterATC;
  NavigationPage(
      {Key key, this.title, this.menuScreenContext, this.selectedPageAfterATC})
      : super(key: key);
  final String title;
  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  Color searchBarColor = Color(0xFFEBE9E9);
  String getFullName;
  String getPassword;
  String getEmail;

  Future getData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      this.getEmail = prefs.getString("email");
      this.getPassword = prefs.getString("password");
      this.getFullName = prefs.getString("FullName");
    });
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      this.getData();
    });
  }

  String fullName;
  Color notificationContainerColor = Color(0xFFFF4444);
  Color navBarIconColor = Color(0XFF4F3175);
  Color appBarColor;
  Color titleTextColor;
  bool visibleCartIcon;
  bool _visibleNotificationContainer;
  bool visibleProfilePage;
  int transitionduration = 3;
  int selectedPage = 1;
  bool visiblecrossIcon;
  double containerwidthHeight;
  Widget profilePage;
  Widget homePage;
  Color navBarUserIconColor;
  @override
  Widget build(BuildContext context) {
    // if (getFullName == null) {
    //   getFullName = "Guest";
    // }

    if (selectedPage == 0) {
      navBarUserIconColor = Color(0XFF4F3175);
      visibleProfilePage = false;
      visiblecrossIcon = true;
      visibleCartIcon = false;
      titleTextColor = Colors.white;
      appBarColor = Color(0XFF434345);
    } else if (selectedPage != 0) {
      navBarUserIconColor = Colors.blueGrey[300];
      visiblecrossIcon = false;
      visibleCartIcon = true;
      appBarColor = Colors.transparent;
      titleTextColor = Colors.black;
      visibleProfilePage = true;
    }
    // Notifications Statements
    int notificationText = 1;
    String notficationTextIntoString;
    if (notificationText > 9) {
      containerwidthHeight = 14.0;
      notficationTextIntoString = notificationText.toString();
      notficationTextIntoString = "9+";
    } else if (notificationText <= 99) {
      containerwidthHeight = 14.0;
      notficationTextIntoString = "$notificationText";
    }

    if (notificationText == 0) {
      _visibleNotificationContainer = false;
    } else if (notificationText != 0) {
      _visibleNotificationContainer = true;
    }
    // Notifications Statements end
    int gettingTime = DateTime.now().hour;
    String titleImage, titleText;
    if (gettingTime > 4 && gettingTime < 18) {
      titleImage = "sun.svg";
      titleText = "Good Morning";
    } else {
      titleImage = "NIGHT.svg";
      titleText = "Welcome";
    }

    if (getFullName == null) {
      fullName = "Guest";
      homePage = HomePageLoginFalse(selectedPage: selectedPage);
      profilePage = ProfilePageLoginFalse();
    } else if (getFullName != null) {
      fullName = getFullName;
      homePage = HomePageLoginTrue();
      profilePage = ProfilePageLoginTrue();
    }
//Lists Starts

    List<Widget> _pages = [profilePage, homePage, AddToCartpage()];

    List navItem = <PersistentBottomNavBarItem>[
      PersistentBottomNavBarItem(
          activeColorPrimary: navBarIconColor,
          inactiveColorPrimary: Colors.blueGrey[300],
          icon: SvgPicture.asset(
            'assets/svgs/profilePage/user.svg',
            width: 20,
            height: 20,
            color: navBarUserIconColor,
          )),
      PersistentBottomNavBarItem(
          inactiveColorPrimary: Colors.blueGrey[300],
          activeColorPrimary: navBarIconColor,
          icon: Icon(
            Icons.home,
          )),
      PersistentBottomNavBarItem(
          inactiveColorPrimary: Colors.blueGrey[300],
          activeColorPrimary: navBarIconColor,
          icon: Stack(children: [
            SizedBox(
              height: double.infinity,
              child: Icon(
                Icons.shopping_cart_outlined,
              ),
            ),
            Positioned(
              bottom: 23,
              left: 10,
              child: Visibility(
                visible: _visibleNotificationContainer,
                child: Container(
                    alignment: Alignment.center,
                    width: 14,
                    height: 14,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: notificationContainerColor,
                    ),
                    child: Text(notficationTextIntoString,
                        style: GoogleFonts.poppins(
                            fontSize: 9, color: Colors.white))),
              ),
            )
          ])),
    ];

//Lists end
    return Container(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: appBarColor,
          actions: [
            Visibility(
              visible: visiblecrossIcon,
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    selectedPage = 2;
                  });
                },
                child: Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
            ),
            Visibility(
              visible: visibleCartIcon,
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  width: 70,
                  height: 70,
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        selectedPage = 2;
                      });
                    },
                    child: Stack(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: double.infinity,
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.black,
                          ),
                        ),
                        Positioned(
                            bottom: 32,
                            left: 18,
                            child: Visibility(
                              visible: _visibleNotificationContainer,
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: notificationContainerColor,
                                      borderRadius: BorderRadius.circular(50)),
                                  alignment: Alignment.center,
                                  width: containerwidthHeight,
                                  height: containerwidthHeight,
                                  child: Padding(
                                    padding: const EdgeInsets.all(1.5),
                                    child: Text(notficationTextIntoString,
                                        style: GoogleFonts.poppins(
                                            fontSize: 9, color: Colors.white)),
                                  )),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
          automaticallyImplyLeading: false,
          title: Container(
            // color: Colors.pink,
            child: Row(
              children: [
                SvgPicture.asset('assets/svgs/$titleImage'),
                SizedBox(
                  width: 10,
                ),
                Text(
                  titleText + "\n" + fullName,
                  style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: titleTextColor),
                ),
              ],
            ),
          ),
        ),
        body: PersistentTabView(
          context,
          navBarStyle: NavBarStyle.style6,
          controller: PersistentTabController(initialIndex: 1),
          confineInSafeArea: true,
          itemAnimationProperties: ItemAnimationProperties(
              curve: Curves.slowMiddle, duration: Duration(milliseconds: 920)),
          screens: _pages,
          onItemSelected: (int index) {
            setState(() {
              selectedPage = index;
            });
          },
          items: navItem,
          resizeToAvoidBottomInset: true,
        ),
        // bottomNavigationBar: PersistentBottomNavBar(),
        // bottomNavigationBar: SnakeNavigationBar.color(
        //   behaviour: SnakeBarBehaviour.floating,
        //   snakeViewColor: searchBarColor,
        //   snakeShape: SnakeShape.circle,
        //   items: navItem,
        //   currentIndex: selectedPage,
        //   onTap: (index) {
        //     setState(() {
        //       selectedPage = index;
        //     });
        //   },
        // ),
        //  body: PersistentTabView(),
      ),
      // body: BottomBarPageTransition(
      //   transitionDuration: Duration(seconds: 1),
      //   builder: (context, index) => _pages[selectedPage],
      //   currentIndex: selectedPage,
      //   totalLength: _pages.length,
      // )
    );
  }
}
