import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget{
  final EdgeInsetsGeometry marr;
  final EdgeInsetsGeometry padding;

  final IconData myicon;
  final Color color;
  final double size;


  CategoryItem({ @required this.myicon,this.color, this.marr,
   this.padding, this.size,   });


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: size,
      height: size,
  padding: padding,
      margin: marr,
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Icon(myicon,size: 40,color: Colors.white,),
    );
  }
}