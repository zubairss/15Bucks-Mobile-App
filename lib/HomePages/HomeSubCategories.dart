import 'package:ecomerce_app/HomePages/HomeCategoriesPage.dart';
import 'package:ecomerce_app/HomePages/HomePageLoginFalse.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeSubCategoriesPage extends StatefulWidget {
  final SubCategories subCatergories;
  final Categories homeCategory;
  // final String homeCategory;

  const HomeSubCategoriesPage({Key key, this.subCatergories, this.homeCategory})
      : super(key: key);
  @override
  _HomeSubCategoriesPageState createState() => _HomeSubCategoriesPageState();
}

class _HomeSubCategoriesPageState extends State<HomeSubCategoriesPage> {
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
  Color navBarIconColor = Color(0XFF4F3175);
  Color addToCartColor = Color(0XFFFFD347);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 4,
                    child: Text(
                      "Exploring",
                      style: GoogleFonts.poppins(fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 10,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(widget.homeCategory.txt + " ->",
                            style: GoogleFonts.poppins(
                                fontSize: 17, color: navBarIconColor)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 7,
                    child: Text(
                      widget.subCatergories.butttonText,
                      style: GoogleFonts.poppins(
                          fontSize: 29, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 1,
                    child: SvgPicture.asset(
                      widget.homeCategory.iconImage,
                      fit: BoxFit.contain,
                      color: Colors.pink,
                      width: 45,
                      height: 45,
                    ),
                  ),
                ],
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: _products.length,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: double.infinity,
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
                            onTap: () {
                              setState(() {});
                            },
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
