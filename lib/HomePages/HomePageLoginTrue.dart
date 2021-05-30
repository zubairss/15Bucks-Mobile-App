import 'package:ecomerce_app/CartPages/CartPage.dart';
import 'package:ecomerce_app/HomePages/HomePageLoginFalse.dart';
import 'package:ecomerce_app/HomePages/HomeProductPage.dart';
import 'package:ecomerce_app/HomePages/HomeCategoriesPage.dart';
import 'package:ecomerce_app/HomePages/Searchedpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HomePageLoginTrue extends StatefulWidget {
  @override
  _HomePageLoginTrueState createState() => _HomePageLoginTrueState();
}

class _HomePageLoginTrueState extends State<HomePageLoginTrue> {
  Color searchBarColor = Color(0xFFEBE9E9);
  Color navBarIconColor = Color(0XFF4F3175);
  Color addToCartColor = Color(0XFFFFD347);
  @override
  Widget build(BuildContext context) {
    //<<<<<-----------------------ARRAYS------Start----------------------->>>>>
    //Array of SunCategories Start

    //Array of SunCategories End
    //Array of Categories Start
    List<Categories> catogories = [
      Categories(iconImage: "assets/svgs/1.svg", txt: "Women's Fashion"),
      Categories(iconImage: "assets/svgs/2.svg", txt: "Men's Fashion"),
      Categories(
          iconImage: "assets/svgs/3.svg", txt: "Phones & Telecomunications"),
      Categories(iconImage: "assets/svgs/4.svg", txt: "Computer"),
      Categories(iconImage: "assets/svgs/5.svg", txt: " Office"),
      Categories(iconImage: "assets/svgs/6.svg", txt: "Security"),
      Categories(iconImage: "assets/svgs/7.svg", txt: "Consumer's Electronics"),
      Categories(iconImage: "assets/svgs/8.svg", txt: "Jewelery"),
      Categories(iconImage: "assets/svgs/9.svg", txt: "Watches"),
      Categories(iconImage: "assets/svgs/10.svg", txt: "Home"),
      Categories(iconImage: "assets/svgs/11.svg", txt: "Pet "),
      Categories(iconImage: "assets/svgs/12.svg", txt: "Appliances"),
      Categories(iconImage: "assets/svgs/13.svg", txt: "Bags"),
      Categories(iconImage: "assets/svgs/14.svg", txt: "Shoes"),
      Categories(iconImage: "assets/svgs/15.svg", txt: "Toys"),
      Categories(iconImage: "assets/svgs/16.svg", txt: "Kids & Babies"),
      Categories(iconImage: "assets/svgs/17.svg", txt: "Outdoor,Funs & Sports"),
      Categories(iconImage: "assets/svgs/18.svg", txt: "Beauty,Health"),
      Categories(iconImage: "assets/svgs/19.svg", txt: "Hairs"),
      Categories(
          iconImage: "assets/svgs/20.svg", txt: "Automobiles & MotorCycles"),
      Categories(iconImage: "assets/svgs/21.svg", txt: "Home Improvement"),
      Categories(iconImage: "assets/svgs/22.svg", txt: " Tools"),
    ];
    //Array of Categories Start
    //Array of products Start
    List<Products> _products = [
      Products(
          productPrice: '15\$',
          productNameUrl: 'Anker Car Charger 100W Power Delivery',
          productImgUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsf1_wcQi1MVltFuEq8jwO8vw1doMtTbYgL-Rbvt0PT6IooDeFlmD07TzRdi5gZNhIkoM&usqp=CAU'),
      Products(
          productPrice: '15\$',
          productNameUrl: 'Anker Car Charger 100W Power Delivery',
          productImgUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsf1_wcQi1MVltFuEq8jwO8vw1doMtTbYgL-Rbvt0PT6IooDeFlmD07TzRdi5gZNhIkoM&usqp=CAU'),
      Products(
          productPrice: '15\$',
          productNameUrl: 'Anker Car Charger 100W Power Delivery',
          productImgUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsf1_wcQi1MVltFuEq8jwO8vw1doMtTbYgL-Rbvt0PT6IooDeFlmD07TzRdi5gZNhIkoM&usqp=CAU'),
      Products(
          productPrice: '15\$',
          productNameUrl: 'Anker Car Charger 100W Power Delivery',
          productImgUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsf1_wcQi1MVltFuEq8jwO8vw1doMtTbYgL-Rbvt0PT6IooDeFlmD07TzRdi5gZNhIkoM&usqp=CAU'),
      Products(
          productPrice: '15\$',
          productNameUrl: 'Anker Car Charger 100W Power Delivery',
          productImgUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsf1_wcQi1MVltFuEq8jwO8vw1doMtTbYgL-Rbvt0PT6IooDeFlmD07TzRdi5gZNhIkoM&usqp=CAU'),
      Products(
          productPrice: '15\$',
          productNameUrl: 'Anker Car Charger 100W Power Delivery',
          productImgUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsf1_wcQi1MVltFuEq8jwO8vw1doMtTbYgL-Rbvt0PT6IooDeFlmD07TzRdi5gZNhIkoM&usqp=CAU')
    ];
//Array of products End
//<<<<<-----------------------ARRAYS-------END---------------------->>>>>
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 43,
                child: TextFormField(
                  onTap: () {
                    showSearch(context: context, delegate: SearchProducts());
                  },
                  style: GoogleFonts.poppins(),
                  decoration: InputDecoration(
                      hintText: "Search what you need...",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.transparent)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      filled: true,
                      fillColor: searchBarColor,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(25))),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: catogories.length,
                itemBuilder: (context, index) {
                  return RawMaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    visualDensity: VisualDensity.compact,
                    onPressed: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          transitionDuration: Duration(milliseconds: 1100),
                          pageBuilder: (a, b, c) => HomeCategoriesPage(
                                homecategories: catogories[index],
                                categoriesIndex: index,
                              )));
                    },
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Color(0XFFF3F3F3),
                            child: Hero(
                              tag: "IconImage" + catogories[index].iconImage,
                              child: SvgPicture.asset(
                                catogories[index].iconImage,
                                width: 20,
                                height: 20,
                                color: Colors.pink,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            child: Expanded(
                              child: Hero(
                                tag: "Text" + catogories[index].txt,
                                child: Text(
                                  catogories[index].txt,
                                  style: GoogleFonts.poppins(fontSize: 9),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 150, childAspectRatio: 3),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: MaterialButton(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).orientation ==
                              Orientation.landscape
                          ? 70
                          : 40,
                      vertical: 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  visualDensity: VisualDensity.compact,
                  color: searchBarColor,
                  onPressed: () {
                    Navigator.of(context, rootNavigator: false).push(
                        MaterialPageRoute(
                            builder: (context) => HomeProductPage(),
                            maintainState: false));
                  },
                  child: Text("Explore All Products",
                      style: GoogleFonts.poppins(
                          color: navBarIconColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Recomended For You",
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.bold)),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: _products.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      pushDynamicScreen(context,
                          screen: PageRouteBuilder(
                              pageBuilder: (a, b, c) => CartPage()));

                      print("You have clicked on" +
                          " " +
                          "Index" +
                          " " +
                          "$index");
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Card(
                              elevation: 0.4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.network(
                                  _products[index].productImgUrl,
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                              child: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                _products[index].productNameUrl,
                                style: GoogleFonts.poppins(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                          Material(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            color: addToCartColor,
                            child: InkWell(
                              customBorder: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20))),
                              highlightColor: navBarIconColor,
                              splashColor: navBarIconColor,
                              child: Container(
                                padding: EdgeInsets.all(7),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Add to Cart",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white),
                                    ),
                                    Text(
                                      _products[index].productPrice,
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 250,
                  mainAxisExtent: 230,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchProducts extends SearchDelegate<Products> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];

   
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          close(context, null);
        });
    
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
    
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(15),
      child: MaterialButton(
          onPressed: () {
            Navigator.of(context).push(PageRouteBuilder(
                pageBuilder: (_, __, ___) => SearchedPage(
                      searchedProduct: query,
                    )));
          },
          child: Text(query, style: GoogleFonts.poppins())),
    );
    
  }
}
