import 'package:flutter/material.dart';

class Products{

  final String name;
  final Image imag;
  final double price;
  final Text Description;
  final Widget addtoCart;

  Products( @required this.name, @required this.price, this.addtoCart, this.imag, this.Description,);


}