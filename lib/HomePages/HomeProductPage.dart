import 'package:ecomerce_app/CartPages/CartPage.dart';
import 'package:ecomerce_app/HomePages/HomePageLoginFalse.dart';
import 'package:ecomerce_app/HomePages/Searchedpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeProductPage extends StatefulWidget {
  @override
  _HomeProductPageState createState() => _HomeProductPageState();
}

class _HomeProductPageState extends State<HomeProductPage> {
  List<Products> _products = [
    Products(
        productPrice: '15\$',
        productNameUrl: 'Rubic Cube ',
        productImgUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsf1_wcQi1MVltFuEq8jwO8vw1doMtTbYgL-Rbvt0PT6IooDeFlmD07TzRdi5gZNhIkoM&usqp=CAU'),
    Products(
        productPrice: '15\$',
        productNameUrl: 'Hands Freee',
        productImgUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsf1_wcQi1MVltFuEq8jwO8vw1doMtTbYgL-Rbvt0PT6IooDeFlmD07TzRdi5gZNhIkoM&usqp=CAU'),
    Products(
        productPrice: '15\$',
        productNameUrl: 'Casing',
        productImgUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsf1_wcQi1MVltFuEq8jwO8vw1doMtTbYgL-Rbvt0PT6IooDeFlmD07TzRdi5gZNhIkoM&usqp=CAU'),
    Products(
        productPrice: '15\$',
        productNameUrl: 'Mobile',
        productImgUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsf1_wcQi1MVltFuEq8jwO8vw1doMtTbYgL-Rbvt0PT6IooDeFlmD07TzRdi5gZNhIkoM&usqp=CAU'),
    Products(
        productPrice: '15\$',
        productNameUrl: 'Car',
        productImgUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsf1_wcQi1MVltFuEq8jwO8vw1doMtTbYgL-Rbvt0PT6IooDeFlmD07TzRdi5gZNhIkoM&usqp=CAU'),
    Products(
        productPrice: '15\$',
        productNameUrl: 'T.V',
        productImgUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsf1_wcQi1MVltFuEq8jwO8vw1doMtTbYgL-Rbvt0PT6IooDeFlmD07TzRdi5gZNhIkoM&usqp=CAU')
  ];

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

  TextEditingController searchProductController = TextEditingController();

  List<Products> filteredItems = [];

  void filterSearchResults(query) {
    if (searchProductController.toString().isNotEmpty) {}
    // List<Products> dummySearchList = [];
    // dummySearchList.addAll(_products);
    // if (query.toString().isNotEmpty) {
    //   List<Products> dummyListData = [];
    //   dummySearchList.forEach((element) {
    //     if (element.toString().contains(query)) {
    //       dummyListData.add(element);
    //     }
    //   });
    //   setState(() {
    //     items.clear();
    //     items.addAll(dummyListData);
    //   });
    // } else {
    //   setState(() {
    //     items.clear();
    //     items.addAll(_products);
    //   });
    // }
  }

  @override
  void initState() {
    super.initState();
    this.getData();
    setState(() {
      filteredItems = _products;
    });
  }

  Color searchBarColor = Color(0xFFEBE9E9);
  Color navBarIconColor = Color(0XFF4F3175);
  Color addToCartColor = Color(0XFFFFD347);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 43,
                  child: TextFormField(
                    onTap: () {
                      showSearch(context: context, delegate: SearchProducts());
                    },
                    // onChanged: (value) {
                    //   setState(() {
                    //     filteredItems = _products
                    //         .where((element) => (element.productNameUrl
                    //             .toLowerCase()
                    //             .contains(value.toLowerCase())))
                    //         .toList();
                    //   });
                    // },
                    controller: searchProductController,
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
                  height: 10,
                ),
                Text(
                  "Scroll through an unlimited collection of",
                  style: GoogleFonts.poppins(fontSize: 15),
                ),
                Text("Products",
                    style: GoogleFonts.poppins(
                        fontSize: 29, fontWeight: FontWeight.bold)),
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
