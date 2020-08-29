import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

class shopScreen extends StatefulWidget {
  @override
  _shopScreenState createState() => _shopScreenState();
}

class _shopScreenState extends State<shopScreen> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 5 , vsync: this);
  }

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
            SizedBox(height: 20.0),
            Padding(
                padding: EdgeInsets.only(left: 30.0) ,
                child: Text(
                  'Lo más comprado',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600
                  ),
                )
            ),
            SizedBox(height: 20.0),
            TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(0.6),
              labelPadding: EdgeInsets.symmetric(horizontal: 35.0),
              isScrollable: true,
              tabs: [
                Tab(
                    child: Text('Top' , style: TextStyle(fontSize: 16.0 , fontWeight: FontWeight.bold),)
                ),
                Tab(
                    child: Text('Top' , style: TextStyle(fontSize: 16.0 , fontWeight: FontWeight.bold),)
                ),
                Tab(
                    child: Text('Top' , style: TextStyle(fontSize: 16.0 , fontWeight: FontWeight.bold),)
                ),
                Tab(
                    child: Text('Top' , style: TextStyle(fontSize: 16.0 , fontWeight: FontWeight.bold),)
                ),
                Tab(
                    child: Text('Top' , style: TextStyle(fontSize: 16.0 , fontWeight: FontWeight.bold),)
                )
              ],
            )


          ],
      ),),
    );
  }
}
