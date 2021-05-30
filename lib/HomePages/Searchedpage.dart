import 'package:ecomerce_app/CartPages/CartPage.dart';
import 'package:ecomerce_app/HomePages/HomePageLoginFalse.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class Compatibility {
  final String compatibilityTxt;

  Compatibility({this.compatibilityTxt});
}

class Brands {
  final String brandsTxt;

  Brands({this.brandsTxt});
}

class SearchedPage extends StatefulWidget {
  final String searchedProduct;
  SearchedPage({Key key, this.searchedProduct}) : super(key: key);
  @override
  _SearchedPageState createState() => _SearchedPageState();
}

class _SearchedPageState extends State<SearchedPage> {
  Color addToCartColor = Color(0XFFFFD347);
  Color navBarIconColor = Color(0XFF4F3175);
  Color notificationContainerColor = Color(0xFFFF4444);
  Color searchBarColor = Color(0xFFEBE9E9);
  List<Compatibility> compatibility = [
    Compatibility(compatibilityTxt: "LG"),
    Compatibility(compatibilityTxt: "Samsung"),
    Compatibility(compatibilityTxt: "Apple"),
    Compatibility(compatibilityTxt: "Nokia"),
    Compatibility(compatibilityTxt: "Blackberry"),
  ];
  List<Brands> brands = [
    Brands(brandsTxt: "Xiaomi"),
    Brands(brandsTxt: "Anker"),
    Brands(brandsTxt: "Baseus"),
    Brands(brandsTxt: "Nohon"),
    Brands(brandsTxt: "Keyson"),
    Brands(brandsTxt: "Huawei"),
  ];
  List<Products> _products = [
    Products(
        productId: "#Abc&da",
        productPrice: '15\$',
        productNameUrl: 'Product Number 1',
        productImgUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsf1_wcQi1MVltFuEq8jwO8vw1doMtTbYgL-Rbvt0PT6IooDeFlmD07TzRdi5gZNhIkoM&usqp=CAU'),
    Products(
        productId: "#Abc&da",
        productPrice: '16\$',
        productNameUrl: 'Product Number 2',
        productImgUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsf1_wcQi1MVltFuEq8jwO8vw1doMtTbYgL-Rbvt0PT6IooDeFlmD07TzRdi5gZNhIkoM&usqp=CAU'),
    Products(
        productId: "#Abc&da",
        productPrice: '17\$',
        productNameUrl: 'Product Number 3',
        productImgUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsf1_wcQi1MVltFuEq8jwO8vw1doMtTbYgL-Rbvt0PT6IooDeFlmD07TzRdi5gZNhIkoM&usqp=CAU'),
    Products(
        productId: "#Abc&da",
        productPrice: '18\$',
        productNameUrl: 'Product Number 4',
        productImgUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsf1_wcQi1MVltFuEq8jwO8vw1doMtTbYgL-Rbvt0PT6IooDeFlmD07TzRdi5gZNhIkoM&usqp=CAU'),
    Products(
        productId: "#Abc&da",
        productPrice: '19\$',
        productNameUrl: 'Product Number 5',
        productImgUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsf1_wcQi1MVltFuEq8jwO8vw1doMtTbYgL-Rbvt0PT6IooDeFlmD07TzRdi5gZNhIkoM&usqp=CAU'),
    Products(
        productId: "#Abc&da",
        productPrice: '20\$',
        productNameUrl: 'Product Number 6',
        productImgUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsf1_wcQi1MVltFuEq8jwO8vw1doMtTbYgL-Rbvt0PT6IooDeFlmD07TzRdi5gZNhIkoM&usqp=CAU'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Search Results for",
                    style: GoogleFonts.poppins(fontSize: 18),
                  ),
                  Spacer(),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Back To All Products",
                        style: GoogleFonts.poppins(
                            fontSize: 19, color: Colors.red)),
                  ),
                ],
              ),
              Text(
                widget.searchedProduct,
                style: GoogleFonts.poppins(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Divider(
                thickness: 2,
              ),
              Text(
                "Filters",
                style: GoogleFonts.poppins(fontSize: 20, color: Colors.red),
              ),
              Text(
                "Compatibility",
                style: GoogleFonts.poppins(fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  itemCount: compatibility.length,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 80,
                      mainAxisSpacing: 5,
                      childAspectRatio: 2.5,
                      crossAxisSpacing: 5),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFFFE2E2),
                          borderRadius: BorderRadius.circular(25)),
                      alignment: Alignment.center,
                      child: Text(
                        compatibility[index].compatibilityTxt,
                        style: GoogleFonts.poppins(),
                      ),
                    );
                  }),
              SizedBox(
                height: 10,
              ),
              Text(
                "Brands",
                style: GoogleFonts.poppins(fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  itemCount: brands.length,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 80,
                      mainAxisSpacing: 5,
                      childAspectRatio: 2.5,
                      crossAxisSpacing: 5),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFFFE2E2),
                          borderRadius: BorderRadius.circular(25)),
                      alignment: Alignment.center,
                      child: Text(
                        brands[index].brandsTxt,
                        style: GoogleFonts.poppins(),
                      ),
                    );
                  }),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                  color: Color(0xFF4F3175),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  child: Text(
                    "Apply Filter",
                    style: GoogleFonts.poppins(color: Colors.white),
                  ),
                  onPressed: () {}),
              Divider(
                thickness: 2,
              ),
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
