import 'package:flutter/material.dart';
class FoodItemDetailUI extends StatelessWidget {
  static const String routeName = "/itemDetail";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Food ItemDetail")),
      body:SingleChildScrollView(
              child: Column(children:<Widget>[
          Container(
            height: 250,
            width: double.infinity,
            child: Image.network("https://images.pexels.com/photos/704569/pexels-photo-704569.jpeg",
            fit: BoxFit.fill),
          ),
         Container(
           margin:EdgeInsets.symmetric(vertical:10),
           child:Text("Food Ingradient"),
           ),
         Container(height: 300,
         child: ListView.builder(itemBuilder: (ctx,index) {
          return Card(
              child:Padding(padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
              child: Text("Item list"),) ,
              color: Colors.lightGreen,
          ); 
         }, itemCount: 9,),
          width:double.infinity,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green),
            borderRadius: BorderRadius.circular(10),
          ),
         ),
         Container(
           child: Text("Food step"),
         ),
         Container(
           height: 300,
           margin: const EdgeInsets.all(10),
           width: double.infinity,
            decoration: BoxDecoration(
            border: Border.all(color: Colors.yellow),
            borderRadius: BorderRadius.circular(10),
          ),

           child: ListView.builder(
             itemCount: 5,
             itemBuilder: (BuildContext context, int index) {
             return ListTile(
               leading: CircleAvatar(child: Text('# ${(index+1)}'),),
               title: Text("item dhjasdhjsd shdjksahdkjashdk as dhkj asdhkjas"),
             ) ;
            },
           ),
         ),
        ]
        ),
      ),
    );
  }
}