import 'package:flutter/material.dart';
import './FoodItemDetail.dart';

class FoodItemScreen extends StatelessWidget {
 void tapFooditem(BuildContext context) {
  Navigator.of(context).pushNamed(FoodItemDetailUI.routeName);
 }
  @override
  Widget build(BuildContext context) {
    return InkWell(
          onTap:() =>  tapFooditem(context) ,
          child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        elevation: 4, // sadow
        child: Column(children:<Widget>[
             Stack(
              children: <Widget>[
            ClipRRect (
            child: Image.network("https://cdn.wallpaperhub.app/cloudcache/1/b/5/8/e/f/1b58ef6e3d36a42e01992accf5c52d6eea244353.jpg",    
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10),),
            ),
           Positioned(
             bottom: 20,
             right: 10,
             child: 
             Text(" Italian food",
             softWrap: true, // separate element
             overflow: TextOverflow.fade,
             style: TextStyle(
               fontSize:26,
               color: Colors.white),
             ),
           ),
          ],
         ),
        Padding(padding: EdgeInsets.all(20),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              Row(children: <Widget>[
              Icon(Icons.schedule),
              SizedBox(width:6), // given space betwwen  teo element
              Text("10 min")
           ],),
           Row(children: <Widget>[
              Icon(Icons.work),
              SizedBox(width:6), // given space betwwen  teo element
              Text("Simple")
           ],),
           Row(children: <Widget>[
              Icon(Icons.attach_money),
              SizedBox(width:6), // given space betwwen  teo element
              Text("Price")
           ],),],
          ),
        ),
        ],
        ),
       ),
    );

  }
}