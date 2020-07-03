import 'package:flutter/material.dart';
import './FooditemScreen.dart';
class ItemListDetail extends StatelessWidget {
  final String title;
  ItemListDetail(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(itemBuilder: (ctx,index) {
        return FoodItemScreen();
      },
      itemCount: 20,
      padding: const EdgeInsets.all(10),
      ),
      );
  }
}