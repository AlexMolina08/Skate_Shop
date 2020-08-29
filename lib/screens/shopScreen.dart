import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

class shopScreen extends StatefulWidget {
  @override
  _shopScreenState createState() => _shopScreenState();
}

class _shopScreenState extends State<shopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(value: SystemUiOverlayStyle.dark,
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 60),
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu , size: 30.0 , color: Colors.grey),
                  Icon(Icons.shopping_cart , size: 30.0 , color: Colors.black)
                ],)
            ),

            SizedBox(height: 20.0,)

          ],
      ),),
    );
  }
}
