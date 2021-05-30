import 'package:ecomerce_app/HomePages/HomePageLoginFalse.dart';
import 'package:ecomerce_app/HomePages/HomeSubCategories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SubCategories {
  final String butttonText;

  SubCategories({this.butttonText});
}

class HomeCategoriesPage extends StatefulWidget {
  final Categories homecategories;
  final int categoriesIndex;

  HomeCategoriesPage({
    Key key,
    this.homecategories,
    this.categoriesIndex,
  }) : super(key: key);

  @override
  _HomeCategoriesPageState createState() => _HomeCategoriesPageState();
}

class _HomeCategoriesPageState extends State<HomeCategoriesPage> {
  Color searchBarColor = Color(0xFFEBE9E9);
  Color navBarIconColor = Color(0XFF4F3175);
  Color addToCartColor = Color(0XFFFFD347);
  List finalSubCategoris;
  List womenFashion = [
    SubCategories(butttonText: "Dresses"),
    SubCategories(butttonText: "Blouses & Shirts"),
    SubCategories(butttonText: "Hoodies & Sweatshirts"),
    SubCategories(butttonText: "Sweaters"),
    SubCategories(butttonText: "Jackets & Coats"),
    SubCategories(butttonText: "Bottoms"),
    SubCategories(butttonText: "Rompers"),
    SubCategories(butttonText: "Tops & Tees"),
    SubCategories(butttonText: "Jumpsuits"),
    SubCategories(butttonText: "Bodysuits"),
    SubCategories(butttonText: "suits & sets"),
    SubCategories(butttonText: "Dress"),
    SubCategories(butttonText: "Jeans"),
    SubCategories(butttonText: "Skirt"),
    SubCategories(butttonText: "Swimsuit"),
    SubCategories(butttonText: "Women Tops"),
    SubCategories(butttonText: "Pants & Capris"),
    SubCategories(butttonText: "Muslim Fashion"),
    SubCategories(butttonText: "Plus size clothes"),
  ];
  List mensFashion = [
    SubCategories(butttonText: "Hoodies & Sweatshirts"),
    SubCategories(butttonText: "Tops & Tees"),
    SubCategories(butttonText: "Jackets & Coats"),
    SubCategories(butttonText: "Pants"),
    SubCategories(butttonText: "Shirts"),
    SubCategories(butttonText: "Jeans"),
    SubCategories(butttonText: "Sweaters"),
    SubCategories(butttonText: "Suits & Blazers"),
    SubCategories(butttonText: "Casual Shorts"),
    SubCategories(butttonText: "Men's Sets"),
    SubCategories(butttonText: "Board Shorts"),
  ];
  List phonesAndTelcommunication = [
    SubCategories(butttonText: "Cellphones"),
    SubCategories(butttonText: "iPhones"),
    SubCategories(butttonText: "Refurbished Phones"),
    SubCategories(butttonText: "Mobile Phone Accessories"),
    SubCategories(butttonText: "Mobile Phone Parts"),
    SubCategories(butttonText: "Phone Bags & Cases"),
    SubCategories(butttonText: "Communication Equipments"),
    SubCategories(butttonText: "Walkie Talkie"),
    SubCategories(butttonText: "Walkie Talkie Parts & Accessories"),
  ];
  List computer = [
    SubCategories(butttonText: "Office Electronics"),
    SubCategories(butttonText: "Computer Peripherals"),
    SubCategories(butttonText: "Laptops"),
    SubCategories(butttonText: "Tablets"),
    SubCategories(butttonText: "Storage Devices"),
    SubCategories(butttonText: "Computer Components"),
    SubCategories(butttonText: "Networking"),
    SubCategories(butttonText: "Mouse & Keyboards"),
    SubCategories(butttonText: "Tablet Accessories"),
    SubCategories(butttonText: "Laptop Accessories"),
    SubCategories(butttonText: "Computer Cables & Connectors"),
    SubCategories(butttonText: "Demo Board & Accessories"),
    SubCategories(butttonText: "Mini PC"),
    SubCategories(butttonText: "Industrial Computer & Accessories"),
    SubCategories(butttonText: "Desktops"),
    SubCategories(butttonText: "Servers"),
    SubCategories(butttonText: "Device Cleaners"),
    SubCategories(butttonText: "Laptop Parts"),
    SubCategories(butttonText: "Tablet Parts"),
  ];
  List office = [
    SubCategories(butttonText: "Stationery Sticker"),
    SubCategories(butttonText: "Writing & Correction Supplies"),
    SubCategories(butttonText: "Notebooks & Writing Pads"),
    SubCategories(butttonText: "Tapes, Adhesives & Fasteners"),
    SubCategories(butttonText: "Art Supplies"),
    SubCategories(butttonText: "Books & Magazines"),
    SubCategories(butttonText: "Desk Accessories & Organizer"),
    SubCategories(butttonText: "School & Educational Supplies"),
    SubCategories(butttonText: "Labels, Indexes & Stamps"),
    SubCategories(butttonText: "Mail & Shipping Supplies"),
    SubCategories(butttonText: "Filing Products"),
    SubCategories(butttonText: "Office Binding Supplies"),
    SubCategories(butttonText: "Calendars, Planners & Cards"),
    SubCategories(butttonText: "Cutting Supplies"),
    SubCategories(butttonText: "Presentation Supplies"),
    SubCategories(butttonText: "Paper"),
  ];
  List security = [
    SubCategories(butttonText: "Video Surveillance"),
    SubCategories(butttonText: "Security Alarm"),
    SubCategories(butttonText: "Access Control"),
    SubCategories(butttonText: "Workplace Safety Supplies"),
    SubCategories(butttonText: "Door Intercom"),
    SubCategories(butttonText: "Self Defense Supplies"),
    SubCategories(butttonText: "Smart Card System"),
    SubCategories(butttonText: "Building Automation"),
    SubCategories(butttonText: "Fire Protection"),
    SubCategories(butttonText: "Emergency Kits"),
    SubCategories(butttonText: "Roadway Safety"),
    SubCategories(butttonText: "Safes"),
    SubCategories(butttonText: "Lightning Protection"),
    SubCategories(butttonText: "Transmission & Cables"),
    SubCategories(butttonText: "Security Inspection Device"),
    SubCategories(butttonText: "IoT Devices"),
    SubCategories(butttonText: "Public Broadcasting"),
  ];
  List consumersElectronics = [
    SubCategories(butttonText: "Portable Audio & Video"),
    SubCategories(butttonText: "Smart Electronics"),
    SubCategories(butttonText: "Home Audio & Video"),
    SubCategories(butttonText: "Accessories & Parts"),
    SubCategories(butttonText: "Camera & Photo"),
    SubCategories(butttonText: "Electronic Cigarettes"),
    SubCategories(butttonText: "Earphones & Headphones"),
    SubCategories(butttonText: "Wearable Devices"),
    SubCategories(butttonText: "Video Games"),
    SubCategories(butttonText: "Sports & Action Video Cameras"),
    SubCategories(butttonText: "Speakers"),
    SubCategories(butttonText: "360° Video Cameras & Accessories"),
    SubCategories(butttonText: "Home Electronic Accessories"),
    SubCategories(butttonText: "VR/AR Devices"),
    SubCategories(butttonText: "Robot"),
    SubCategories(butttonText: "HIFI Devices"),
    SubCategories(butttonText: "Live Equipment"),
    SubCategories(butttonText: "Power Source"),
  ];
  List jewelary = [
    SubCategories(butttonText: "Fine Jewelry"),
    SubCategories(butttonText: "Necklaces & Pendants"),
    SubCategories(butttonText: "Earrings"),
    SubCategories(butttonText: "Rings"),
    SubCategories(butttonText: "Bracelets & Bangles"),
    SubCategories(butttonText: "Jewelry Sets & More"),
    SubCategories(butttonText: "Beads & Jewelry Making"),
    SubCategories(butttonText: "Wedding & Engagement Jewelry"),
    SubCategories(butttonText: "Jewelry making"),
    SubCategories(butttonText: "Customized Jewelry"),
  ];
  List watches = [
    SubCategories(butttonText: "Men's Watches"),
    SubCategories(butttonText: "Women's Watches"),
    SubCategories(butttonText: "Lover's Watches"),
    SubCategories(butttonText: "Children's Watches"),
    SubCategories(butttonText: "Pocket & Fob Watches"),
    SubCategories(butttonText: "Watch Accessories"),
    SubCategories(butttonText: "Women's Bracelet Watches"),
  ];
  List home = [
    SubCategories(butttonText: "Kitchen,Dining & Bar"),
    SubCategories(butttonText: "Home Decor"),
    SubCategories(butttonText: "Home Textile"),
    SubCategories(butttonText: "Arts,Crafts & Sewing"),
    SubCategories(butttonText: "Festive & Party Supplies"),
    SubCategories(butttonText: "Home Storage & Organization"),
    SubCategories(butttonText: "Bathroom Products"),
    SubCategories(butttonText: "Household Cleaning"),
    SubCategories(butttonText: "Pet Products"),
    SubCategories(butttonText: "Garden Supplies"),
    SubCategories(butttonText: "Household Merchandises"),
  ];
  List pet = [
    SubCategories(butttonText: "Dog Clothing & Shoes"),
    SubCategories(butttonText: "Dog Collars & Leads"),
    SubCategories(butttonText: "Dog Feeding"),
    SubCategories(butttonText: "Dog Grooming"),
    SubCategories(butttonText: "Dog Doors, Houses & Furniture"),
    SubCategories(butttonText: "Dog Toys"),
    SubCategories(butttonText: "Dog Training Aids"),
    SubCategories(butttonText: "Dog Carriers"),
    SubCategories(butttonText: "Dog Litter & Housebreaking"),
    SubCategories(butttonText: "Cat Supplies"),
    SubCategories(butttonText: "Fish & Aquatic Supplies"),
    SubCategories(butttonText: "Reptile & Amphibian Supplies"),
    SubCategories(butttonText: "Small Animal Supplies"),
    SubCategories(butttonText: "Bird Supplies"),
    SubCategories(butttonText: "Insect Supplies"),
    SubCategories(butttonText: "Farm Animal Supplies"),
    SubCategories(butttonText: "Pet Thermometers"),
    SubCategories(butttonText: "Pet Memorials"),
    SubCategories(butttonText: "GPS Trackers"),
    SubCategories(butttonText: "Pet Microchips"),
    SubCategories(butttonText: "Pet Health Care & Hygiene"),
    SubCategories(butttonText: "Pet Medical Supplies"),
    SubCategories(butttonText: "Dog Food"),
  ];
  List appliances = [
    SubCategories(butttonText: "Kitchen Appliances"),
    SubCategories(butttonText: "Household Appliances"),
    SubCategories(butttonText: "Personal Care Appliances"),
    SubCategories(butttonText: "Major Appliances"),
    SubCategories(butttonText: "Commercial Appliances"),
    SubCategories(butttonText: "Home Appliance Parts"),
  ];
  List bags = [
    SubCategories(butttonText: "Women's Bags"),
    SubCategories(butttonText: "Men's Bags"),
    SubCategories(butttonText: "Backpacks"),
    SubCategories(butttonText: "Wallets"),
    SubCategories(butttonText: "Kids & Baby's Bags"),
    SubCategories(butttonText: "Luggage & Travel Bags"),
    SubCategories(butttonText: "Functional Bags"),
    SubCategories(butttonText: "Coin Purses & Holders"),
    SubCategories(butttonText: "Bag Parts & Accessories"),
  ];
  List shoes = [
    SubCategories(butttonText: "Women's Shoes"),
    SubCategories(butttonText: "Men's Shoes"),
    SubCategories(butttonText: "Men's Casual Shoes"),
    SubCategories(butttonText: "Women's Pumps"),
    SubCategories(butttonText: "Women's Boots"),
    SubCategories(butttonText: "Women's Vulcanize Shoes"),
    SubCategories(butttonText: "Women's Flats"),
    SubCategories(butttonText: "Men's Boots"),
    SubCategories(butttonText: "Men's Vulcanize Shoes"),
    SubCategories(butttonText: "Shoe Accessories"),
  ];
  List toys = [
    SubCategories(butttonText: "Dolls & Accessories"),
    SubCategories(butttonText: "Remote Control Toys"),
    SubCategories(butttonText: "Building & Construction Toys"),
    SubCategories(butttonText: "Classic Toys"),
    SubCategories(butttonText: "Learning & Education"),
    SubCategories(butttonText: "Outdoor Fun & Sports"),
    SubCategories(butttonText: "Model Building"),
    SubCategories(butttonText: "Diecasts & Toy Vehicles"),
    SubCategories(butttonText: "Baby & Toddler Toys"),
    SubCategories(butttonText: "Electronic Toys"),
    SubCategories(butttonText: "Puzzles & Games"),
    SubCategories(butttonText: "Novelty & Gag Toys"),
    SubCategories(butttonText: "Stress Relief Toy"),
    SubCategories(butttonText: "Kid's Party"),
    SubCategories(butttonText: "Hobby & Collectibles"),
    SubCategories(butttonText: "High Tech Toys"),
    SubCategories(butttonText: "Arts & Crafts, DIY toys"),
    SubCategories(butttonText: "Stuffed Animals & Plush"),
    SubCategories(butttonText: "Popular Toys"),
    SubCategories(butttonText: "Pretend Play"),
    SubCategories(butttonText: "Pools & Water Fun"),
    SubCategories(butttonText: "Action & Toy Figures"),
    SubCategories(butttonText: "Play Vehicles & Models"),
    SubCategories(butttonText: "Ride On Toys"),
  ];
  List kidsBabies = [
    SubCategories(butttonText: "Girls' Clothing"),
    SubCategories(butttonText: "Boys' Clothing"),
    SubCategories(butttonText: "Children's Shoes"),
    SubCategories(butttonText: "Girls' Baby Clothing"),
    SubCategories(butttonText: "Boys' Baby Clothing"),
    SubCategories(butttonText: "Baby Shoes"),
    SubCategories(butttonText: "kids&Baby Accessories"),
    SubCategories(butttonText: "Matching Family Outfits"),
    SubCategories(butttonText: "Nappy Changing"),
    SubCategories(butttonText: "Baby Care"),
    SubCategories(butttonText: "Feeding"),
    SubCategories(butttonText: "Baby Bedding"),
    SubCategories(butttonText: "Baby Stroller & Accessories"),
    SubCategories(butttonText: "Pregnancy & Maternity"),
    SubCategories(butttonText: "Activity & Gear"),
    SubCategories(butttonText: "Baby Furniture"),
    SubCategories(butttonText: "Safety Equipment"),
  ];
  List outdoorFunsSports = [
    SubCategories(butttonText: "Sports Clothing"),
    SubCategories(butttonText: "Sneakers"),
    SubCategories(butttonText: "Cycling"),
    SubCategories(butttonText: "Fishing"),
    SubCategories(butttonText: "Camping & Hiking"),
    SubCategories(butttonText: "Swimming"),
    SubCategories(butttonText: "Musical Instruments"),
    SubCategories(butttonText: "Hunting"),
    SubCategories(butttonText: "Fitness & Body Building"),
    SubCategories(butttonText: "Water Sports"),
    SubCategories(butttonText: "Team Sports"),
    SubCategories(butttonText: "Racquet Sports"),
    SubCategories(butttonText: "Running"),
    SubCategories(butttonText: "Shooting"),
    SubCategories(butttonText: "Skiing & Snowboarding"),
    SubCategories(butttonText: "Sports Accessories"),
    SubCategories(butttonText: "Roller Skates, Skateboards & Scooters"),
    SubCategories(butttonText: "Entertainment"),
    SubCategories(butttonText: "Sports Bags"),
  ];
  List beautyHealth = [
    SubCategories(butttonText: "Nails Art & Tools"),
    SubCategories(butttonText: "Makeup"),
    SubCategories(butttonText: "Health Care"),
    SubCategories(butttonText: "Skin Care"),
    SubCategories(butttonText: "Hair Care & Styling"),
    SubCategories(butttonText: "Shaving & Hair Removal"),
    SubCategories(butttonText: "Beauty Essentials"),
    SubCategories(butttonText: "Tattoo & Body Art"),
    SubCategories(butttonText: "Bath & Shower"),
    SubCategories(butttonText: "Fragrances & Deodorants"),
    SubCategories(butttonText: "Oral Hygiene"),
    SubCategories(butttonText: "Tools & Accessories"),
    SubCategories(butttonText: "Men's Grooming"),
    SubCategories(butttonText: "Skin Care Tools"),
  ];
  List hairs = [
    SubCategories(butttonText: "Human Hair Weaves"),
    SubCategories(butttonText: "Lace Wigs"),
    SubCategories(butttonText: "Hair Extensions"),
    SubCategories(butttonText: "Salon Hair Supply Chain"),
    SubCategories(butttonText: "Synthetic Wigs"),
    SubCategories(butttonText: "Hair Braids"),
    SubCategories(butttonText: "Synthetic Extensions"),
    SubCategories(butttonText: "Hair Pieces"),
    SubCategories(butttonText: "Hair Salon Tools & Accessories"),
    SubCategories(butttonText: "DIY Wigs"),
  ];
  List automobileMotorcycles = [
    SubCategories(butttonText: "Car Lights"),
    SubCategories(butttonText: "Auto Replacement Parts"),
    SubCategories(butttonText: "Car Electronics"),
    SubCategories(butttonText: "Interior Accessories"),
    SubCategories(butttonText: "Car Repair Tools"),
    SubCategories(butttonText: "Motorcycle Accessories & Parts"),
    SubCategories(butttonText: "Exterior Accessories"),
    SubCategories(butttonText: "Car Wash & Maintenance"),
    SubCategories(butttonText: "ATV,RV,Boat & Other Vehicle"),
    SubCategories(butttonText: "Travel & Roadway Product"),
  ];
  List homeImprovement = [
    SubCategories(butttonText: "Lights & Lighting"),
    SubCategories(butttonText: "Bathroom Fixtures"),
    SubCategories(butttonText: "Kitchen Fixtures"),
    SubCategories(butttonText: "Hardware"),
    SubCategories(butttonText: "Electrical Equipments & Supplies"),
    SubCategories(butttonText: "Building Supplies"),
    SubCategories(butttonText: "Painting Supplies & Wall Treatments"),
    SubCategories(butttonText: "Plumbing"),
    SubCategories(butttonText: "Family Intelligence System"),
  ];
  List tools = [
    SubCategories(butttonText: "Measurement & Analysis Instruments"),
    SubCategories(butttonText: "Power Tools"),
    SubCategories(butttonText: "Hand Tools"),
    SubCategories(butttonText: "Machine Tools & Accessories"),
    SubCategories(butttonText: "Tool Sets"),
    SubCategories(butttonText: "Welding Equipment"),
    SubCategories(butttonText: "Welding & Soldering Supplies"),
    SubCategories(butttonText: "Woodworking Machinery & Parts"),
    SubCategories(butttonText: "Tool Parts"),
    SubCategories(butttonText: "Garden Tools"),
    SubCategories(butttonText: "Hand & Power Tool Accessories"),
    SubCategories(butttonText: "Abrasive Tools"),
    SubCategories(butttonText: "Tool Organizers"),
    SubCategories(butttonText: "Construction Tools"),
    SubCategories(butttonText: "Lifting Tools & Accessories"),
    SubCategories(butttonText: "Abrasives"),
  ];
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
  @override
  Widget build(BuildContext context) {
    if (widget.categoriesIndex == 0) {
      finalSubCategoris = womenFashion;
    } else if (widget.categoriesIndex == 1) {
      finalSubCategoris = mensFashion;
    } else if (widget.categoriesIndex == 2) {
      finalSubCategoris = phonesAndTelcommunication;
    } else if (widget.categoriesIndex == 3) {
      finalSubCategoris = computer;
    } else if (widget.categoriesIndex == 4) {
      finalSubCategoris = office;
    } else if (widget.categoriesIndex == 5) {
      finalSubCategoris = security;
    } else if (widget.categoriesIndex == 6) {
      finalSubCategoris = consumersElectronics;
    } else if (widget.categoriesIndex == 7) {
      finalSubCategoris = jewelary;
    } else if (widget.categoriesIndex == 8) {
      finalSubCategoris = watches;
    } else if (widget.categoriesIndex == 9) {
      finalSubCategoris = home;
    } else if (widget.categoriesIndex == 10) {
      finalSubCategoris = pet;
    } else if (widget.categoriesIndex == 11) {
      finalSubCategoris = appliances;
    } else if (widget.categoriesIndex == 12) {
      finalSubCategoris = bags;
    } else if (widget.categoriesIndex == 13) {
      finalSubCategoris = shoes;
    } else if (widget.categoriesIndex == 14) {
      finalSubCategoris = toys;
    } else if (widget.categoriesIndex == 15) {
      finalSubCategoris = kidsBabies;
    } else if (widget.categoriesIndex == 16) {
      finalSubCategoris = outdoorFunsSports;
    } else if (widget.categoriesIndex == 17) {
      finalSubCategoris = beautyHealth;
    } else if (widget.categoriesIndex == 18) {
      finalSubCategoris = hairs;
    } else if (widget.categoriesIndex == 19) {
      finalSubCategoris = automobileMotorcycles;
    } else if (widget.categoriesIndex == 20) {
      finalSubCategoris = homeImprovement;
    } else if (widget.categoriesIndex == 21) {
      finalSubCategoris = tools;
    }
    print(widget.categoriesIndex);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Exploring",
                style: GoogleFonts.poppins(fontSize: 17),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Hero(
                        tag: "Text" + widget.homecategories.txt,
                        child: Text(
                          widget.homecategories.txt.toString(),
                          style: GoogleFonts.poppins(
                              fontSize: 29, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.centerRight,
                      // color: Colors.grey,
                      child: Hero(
                        tag: "IconImage" + widget.homecategories.iconImage,
                        child: SvgPicture.asset(
                          widget.homecategories.iconImage.toString(),
                          fit: BoxFit.contain,
                          width: 45,
                          height: 45,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 1,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: finalSubCategoris.length,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 150,
                    childAspectRatio: 2.5,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                  ),
                  itemBuilder: (context, index) {
                    return MaterialButton(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: navBarIconColor.withOpacity(0.4), width: 0.8),
                          borderRadius: BorderRadius.circular(7)),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomeSubCategoriesPage(
                                  homeCategory: widget.homecategories,
                                  subCatergories: finalSubCategoris[index],
                                )));
                      },
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              finalSubCategoris[index].butttonText,
                              softWrap: true,
                              // overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.poppins(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
              Divider(
                thickness: 1,
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
