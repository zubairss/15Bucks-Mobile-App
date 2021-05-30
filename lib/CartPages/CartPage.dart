import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class SwiperProducts {
  final String imgUrl;

  SwiperProducts({this.imgUrl});
}

class CartPage extends StatefulWidget {
  final selectedPageAddtoCart;
  CartPage({Key key, this.selectedPageAddtoCart}) : super(key: key);
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int increment = 0;
  // String productGetId;
  // String productGetName;
  // String productGetPrice;
  // String productGetImgUrl;
  // List listProductGetId = [];
  // List listProductGetName = [];
  // List listProductGetPrice = [];
  // List listProductGetImgUrl = [];
  // getProduct() async {
  //   final getPref = await SharedPreferences.getInstance();
  //   setState(() {
  //     this.productGetId = getPref.getString("productId");
  //     this.productGetName = getPref.getString("productName");
  //     this.productGetPrice = getPref.getString("productPrice");
  //     this.productGetImgUrl = getPref.getString("productImgUrl");
  //   });
  // }

  plus() {
    setState(() {
      increment++;
    });
  }

  minus() {
    setState(() {
      increment--;
      if (increment < 0) {
        increment = 0;
      }
    });
  }

// initstate page  pay attay sath hii 1 martaba  chalta hoota hai sab say pahlay

  @override
  void initState() {
    super.initState();
    print(widget.selectedPageAddtoCart);
    // setState(() {
    //   // this.getProduct();
    //   // listProductGetId.add(productGetId);
    //   // listProductGetName.add(productGetName);
    //   // listProductGetPrice.add(productGetPrice);
    //   // listProductGetImgUrl.add(productGetImgUrl);
    // });
  }

  List<SwiperProducts> swiperProduct = [
    SwiperProducts(
        imgUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsf1_wcQi1MVltFuEq8jwO8vw1doMtTbYgL-Rbvt0PT6IooDeFlmD07TzRdi5gZNhIkoM&usqp=CAU"),
    SwiperProducts(
        imgUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsf1_wcQi1MVltFuEq8jwO8vw1doMtTbYgL-Rbvt0PT6IooDeFlmD07TzRdi5gZNhIkoM&usqp=CAU"),
    SwiperProducts(
        imgUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsf1_wcQi1MVltFuEq8jwO8vw1doMtTbYgL-Rbvt0PT6IooDeFlmD07TzRdi5gZNhIkoM&usqp=CAU"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: MediaQuery.of(context).orientation ==
                          Orientation.landscape
                      ? MediaQuery.of(context).size.height / 1.5
                      : MediaQuery.of(context).size.height / 3,
                  child: Swiper(
                    controller: SwiperController(),
                    loop: false,
                    pagination: SwiperPagination(
                        builder: DotSwiperPaginationBuilder(
                            activeColor: Colors.black,
                            color: Colors.blueGrey,
                            size: 6)),
                    outer: true,
                    itemCount: swiperProduct.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Image.network(swiperProduct[index].imgUrl),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  // width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    children: [
                      Text(
                        "Belkin Car Charger 100W with Lightning Cable",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "12\$",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Belkin car charger 100W with lightning cable. Perfect for iPhone and android device charging. Portable Charger",
                        textAlign: TextAlign.center,
                        // textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            "Color :",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Container(
                            child: Wrap(
                              spacing: 5,
                              children: [
                                MaterialButton(
                                    elevation: 0.0,
                                    visualDensity: VisualDensity.compact,
                                    color: Color(0XFFFFE2E2),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    minWidth: 70,
                                    onPressed: () {},
                                    child: Text(
                                      "Blue",
                                      style: GoogleFonts.poppins(),
                                    )),
                                MaterialButton(
                                    elevation: 0.0,
                                    visualDensity: VisualDensity.compact,
                                    color: Color(0XFFFFE2E2),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    minWidth: 70,
                                    onPressed: () {},
                                    child: Text(
                                      "Black",
                                      style: GoogleFonts.poppins(),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Text(
                            "Qty",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          MaterialButton(
                            minWidth: 50,
                            child: Icon(
                              FontAwesome.minus,
                              size: 15,
                            ),
                            visualDensity: VisualDensity.compact,
                            onPressed: () {
                              minus();
                            },
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "$increment",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          MaterialButton(
                            minWidth: 50,
                            child: Icon(
                              FontAwesome.plus,
                              size: 15,
                            ),
                            visualDensity: VisualDensity.compact,
                            onPressed: () {
                              plus();
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  color: Color(0xFFFB5151),
                  minWidth: MediaQuery.of(context).size.width / 1.2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  onPressed: () {
                    Fluttertoast.showToast(
                        toastLength: Toast.LENGTH_LONG,
                        msg: "Your Order has succesffuly Placed in Cart",
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                    // pushNewScreen(context,
                    //     screen: null,
                    //     withNavBar: false,
                    //     customPageRoute: PageRouteBuilder(
                    //         pageBuilder: (a, b, c) => AddToCartpage(

                    //         )

                    //         //  NavigationPage(
                    //         //       selectedPageAfterATC:
                    //         //           widget.selectedPageAddtoCart,
                    //         //     )

                    //         ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text('Add to Cart',
                        style: GoogleFonts.poppins(
                            fontSize: 16, color: Colors.white)),
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
