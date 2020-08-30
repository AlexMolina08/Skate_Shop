import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

import 'package:skate_shop/models/skate_model.dart';
import 'package:flutter/services.dart';


class SkateScreen extends StatefulWidget {

  final Skate skate;

  SkateScreen({this.skate}  );

  @override
  _SkateScreenState createState() => _SkateScreenState();
}

class _SkateScreenState extends State<SkateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value:SystemUiOverlayStyle.light,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(left:30.0,right: 30.0,top: 60.0),
                    height: 520.0,
                    color: Color(0x5F0080ff),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.pop(context),
                              child: Icon(Icons.arrow_back , size: 30.0 , color: Colors.white),
                            ),
                            Icon(Icons.shopping_cart , size: 30.0 , color: Colors.white)
                          ],),
                          SizedBox(height: 20.0),
                        Text(
                          widget.skate.category.toUpperCase(),
                          style: TextStyle(color:Colors.white,fontSize: 15.0),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          widget.skate.name,
                          style: TextStyle(color:Colors.white,fontSize: 30.0 , fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 40.0),
                        Text(
                          'DESDE',
                          style: TextStyle(color:Colors.white,fontSize: 15.0),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          '\ ${widget.skate.price} €',
                          style: TextStyle(color:Colors.white,fontSize: 30.0 , fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height:40.0),
                        Text(
                          'TAMAÑO',
                          style: TextStyle(color:Colors.white,fontSize: 15.0),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          widget.skate.size,
                          style: TextStyle(color:Colors.white,fontSize: 30.0 , fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 40.0),
                        RawMaterialButton(
                          onPressed: () => print("Añadido al Carrito"),
                          padding: EdgeInsets.all(20.0),
                          shape: CircleBorder(),
                          elevation: 2.0,
                          fillColor: Colors.black87,
                          child: Icon(
                            Icons.add_shopping_cart,
                            color: Colors.white,
                            size: 35.0,
                          )
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      right: 60.0,
                      bottom: 30.0,
                      child: Hero(
                          tag: widget.skate.imageUrl,
                          child: Image(
                              image: AssetImage('${widget.skate.imageUrl}.png'),
                              fit: BoxFit.cover
                          )
                      )
                  ),
                ],
              ),
              Container(
                  height: 400.0,
                  transform: Matrix4.translationValues(0.0 , -20.0 , 0.0),
                  decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30.0,right: 30.0,top: 40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Acerca de esta tabla ...' ,
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600
                            ),),
                            SizedBox(height: 10.0),
                            Text(widget.skate.description,
                            style: TextStyle(
                              color:Colors.black87,
                              fontSize: 16.0
                            ),)
                          ],
                        ),
                      ),

                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 40.0),
                          child:Column( crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                              'Detalles',
                              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
                              )
                          ],
                          ))
                    ],
                  )
              )
            ],
          )
        )
      )
    );
  }
}

