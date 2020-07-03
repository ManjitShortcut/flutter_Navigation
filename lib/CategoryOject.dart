import 'package:flutter/material.dart';
class Category {
  final String id;
  final String name;
  final Color color;
  const Category({
    @required this.id, 
    @required this.name,
    this.color = Colors.green,
    }) ;
}
const categoryList = const [
  Category(id:"Indian",name: "Italian", color: Colors.red),
  Category(id:"Indian",name: "Indian", color: Colors.blue),
  Category(id:"china",name: "Chinese", color: Colors.yellow),
  Category(id:"Japan",name: "Japanise", color: Colors.black)
  ];
