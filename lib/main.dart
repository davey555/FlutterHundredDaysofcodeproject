//Day 20 Ecommerce Layout,
//Bloc State
//Dart tutorials and using Dart Packages

import 'imporrt.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Ecomm());
}

class Ecomm extends StatelessWidget {
  final ValueChanged<void> testing;
  Ecomm({Key key, this.testing}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: Practice(),
    );
  }
}

class Practice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('Practicing Flutter'),),
      body:Container(),
    );
  }
}
