import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:skate_shop/models/skate_model.dart';

class shopScreen extends StatefulWidget {
  @override
  _shopScreenState createState() => _shopScreenState();
}

class _shopScreenState extends State<shopScreen> with SingleTickerProviderStateMixin{
  TabController _tabController;
  PageController _pageController;
  int _selectedPage = 0;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 5 , vsync: this);
    _pageController = PageController(initialPage: 0 , viewportFraction: 0.8);
  }



  /*
  * Crea una carta de cada skate para la lista
  * */
  _skateSelector(int index){
    return AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context , Widget widget){
        double value = 1;
        if(_pageController.position.haveDimensions){
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
        }

        return Center(child:SizedBox(
          height: Curves.easeInOut.transform(value) * 500,
          width: Curves.easeInOut.transform(value) * 400,
          child: widget,
        )

        );
      },
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(decoration: BoxDecoration(
            color: Color(0x5F0080ff),
            borderRadius: BorderRadius.circular(20.0)
          ),
            margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 30.0),
            child: Stack(children:[
              Center(child: Hero(
                tag: skates[index].imageUrl,
                child: Image(
                  height: 280,
                  width: 280,
                  image: AssetImage(
                    'assets/images/skate$index.png'
                  ),
                  //fit: BoxFit.cover
                ),
              ),),
              Positioned(
                top: 30.0 ,
                right: 30.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                        "DESDE",
                        style: TextStyle(color:Colors.white, fontSize: 15.0)),
                    Text(
                        "\ ${skates[index].price} €",
                        style: TextStyle(color:Colors.white, fontSize: 25.0 , fontWeight: FontWeight.w600))
                  ],
                )
              ),
              Positioned(
                left: 15.0,
                bottom: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      skates[index].category.toUpperCase(),
                      style: TextStyle(color:Colors.white, fontSize: 15.0)),
                    SizedBox(height: 1.0),
                    Text(
                     skates[index].name,
                      style: TextStyle(color:Colors.white, fontSize: 25.0, fontWeight: FontWeight.w500),
                    )
                  ],
                )
              )
            ]),
          ),

          Positioned(
            bottom: 4.0,
            child: RawMaterialButton(
              padding:EdgeInsets.all(15.0),
              shape: CircleBorder(),
              elevation: 2.0,
              fillColor: Colors.black,
              child: Icon(Icons.add_shopping_cart , color: Colors.white , size:30.0),
              onPressed: ()=> print("añadido al carrito"),
            )
          )

        ]
      ),
    );
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
                    child: Text('Nueva Temporada' , style: TextStyle(fontSize: 16.0 , fontWeight: FontWeight.bold),)
                ),
                Tab(
                    child: Text('Edición Limitada' , style: TextStyle(fontSize: 16.0 , fontWeight: FontWeight.bold),)
                ),
                Tab(
                    child: Text('Mejor valorados' , style: TextStyle(fontSize: 16.0 , fontWeight: FontWeight.bold),)
                ),
                Tab(
                    child: Text('Ofertas' , style: TextStyle(fontSize: 16.0 , fontWeight: FontWeight.bold),)
                )
              ],
            ),
            SizedBox(height: 20.0),
            Container(
              height: 500.0,
              width: double.infinity,
              child: PageView.builder(controller: _pageController ,
              onPageChanged:(int index){
                setState(() {
                  _selectedPage = index;
                });
              },
                itemCount: skates.length,
                itemBuilder: (BuildContext context , int index){
                  return _skateSelector(index);
                },
              )
            ),

            Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Descripción' , style: TextStyle(fontSize: 22.0 , fontWeight: FontWeight.w600),),
                  SizedBox(height: 10.0,),

                ],
              )
            )

          ],
      ),),
    );
  }
}
