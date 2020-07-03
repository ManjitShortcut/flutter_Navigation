import 'package:flutter/material.dart';
import 'package:restuarnt_app/CategoryScreen.dart';
import './CategoryOject.dart';
class CategoryListUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(children: 
      categoryList.map((item) => CategoryUI(item.name,item.color),
      ).toList(),
    padding: const EdgeInsets.all(20),
    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
    maxCrossAxisExtent: 200, 
    childAspectRatio: 3/2 ,
    crossAxisSpacing: 20,
    mainAxisSpacing: 20),
    );
  }
}