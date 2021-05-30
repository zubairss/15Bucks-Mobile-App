import 'package:ecomerce_app/Navigation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '15Bucks',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: NavigationPage(
        title: '15Bucks',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
