import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:hundreddaysofcodeproject/models/models.dart';
import 'package:hundreddaysofcodeproject/widgets/widgets.dart';
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hundreddaysofcodeproject/models/products.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(
      //   child: DrawerHeader(
      //     child: Text('hi'),
      // //   ),
      // ),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            EvaIcons.menu2Outline,
            color: Colors.black,
          ),
          onPressed: () {
            Scaffold.of(context)
                .hasDrawer; //TODO: add the drawer icon to open the drawer
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(EvaIcons.shoppingBag),
            onPressed: () {},
            color: Colors.black,
          ),
        ],
        title: Container(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Image.asset('images/logo.png'),
          ),
        ),
        centerTitle: true,
      ),
      body: HomPag(),
    );
  }
}
class HomPag extends StatefulWidget {
  @override
  _HomPagState createState() => _HomPagState();
}

class _HomPagState extends State<HomPag> {
 int num = 0;
  List banner = [

    'images/banner2.jpeg',
    'images/banner3.jpeg',
    'images/banner4.jpeg',
    'images/banner5.jpeg',
    'images/banner6.jpeg',
    'images/banner7.jpeg',
  ];
  List <Products> produce = [
Products("Electricity Devices", 10000, IconButton(icon: Icon(EvaIcons.shoppingCart),), Image.asset('Image/item0.jpeg'), Text('This Product is the top in the market ')),
  ];
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
      ),
    );
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Category',
                style: TextStyle(
                    fontFamily: 'Copyviol',
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView(
                padding: EdgeInsets.all(5.0),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  CategoryItem(
                    myicon: EvaIcons.phone,
                    padding: EdgeInsets.all(4.0),
                    color: Colors.blue,
                    size: 90,
                    marr: EdgeInsets.only(left: 10),
                  ),
                  CategoryItem(
                    myicon: EvaIcons.headphones,
                    padding: EdgeInsets.all(4.0),
                    color: Colors.green,
                    size: 90,
                    marr: EdgeInsets.only(left: 10),
                  ),
                  CategoryItem(
                    myicon: EvaIcons.battery,
                    padding: EdgeInsets.all(4.0),
                    color: Colors.indigoAccent,
                    size: 90,
                    marr: EdgeInsets.only(left: 10),
                  ),
                  CategoryItem(
                    myicon: EvaIcons.smartphone,
                    padding: EdgeInsets.all(4.0),
                    color: Colors.orange,
                    size: 90,
                    marr: EdgeInsets.only(left: 10),
                  ),
                  CategoryItem(
                    myicon: EvaIcons.wifi,
                    padding: EdgeInsets.all(4.0),
                    color: Colors.brown,
                    size: 90,
                    marr: EdgeInsets.only(left: 10),
                  ),
                  CategoryItem(
                    myicon: EvaIcons.camera,
                    padding: EdgeInsets.all(4.0),
                    color: Colors.lightBlue,
                    size: 90,
                    marr: EdgeInsets.only(left: 10),
                  ),
                ],
              ),
            ),

            CarouselSlider(
                items:banner.map((i) => Builder(builder: (BuildContext context){
                  return ClipRRect(
                    child: Container(
                      width:MediaQuery.of(context).size.width ,
                    margin: EdgeInsets.symmetric(horizontal:7.0),
                      child: Image(
                        image: AssetImage(i),
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width,

                      ),
                    ),
                  );

                },)).toList(),
                options: CarouselOptions(
                  height: 300,
                  aspectRatio: 16/9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  onPageChanged: (int index, CarouselPageChangedReason reason){
                    index = 1;

                  },
                  scrollDirection: Axis.horizontal,
                )
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Products',
                style: TextStyle(
                    fontFamily: 'Copyviol',
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          GridView.count(
            scrollDirection: Axis.vertical,
            physics: ClampingScrollPhysics(),
            crossAxisCount: 2,
            shrinkWrap: true,
            padding: EdgeInsets.all(5.0),
            children: produce.map((product) {
              return Container(
              child: Image(image: AssetImage('images/item40.jpeg'),),
              );
            }).toList(),

          ),

          ],
        ),
      ),
    );
  }

}

