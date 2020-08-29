import 'package:flutter/material.dart';
import 'package:skate_shop/screens/shopScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skate Shop',
      debugShowCheckedModeBanner: false,
      home: shopScreen()
    );
  }
}
