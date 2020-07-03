import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ItemDetail_Screen.dart';
class CategoryUI extends StatelessWidget {
   final String title;
   final Color color;
   CategoryUI(
     this.title, 
     this.color
   );
 void navigateListDetail(BuildContext context){
   // using navigator
   Navigator.of(context).push(MaterialPageRoute(builder: (_){
    return ItemListDetail(title);
   })
   );
  //  Navigator.of(context).push(CupertinoPageRoute(builder: (_){
  //   return ItemListDetail();
  //  })
  //  );
 }
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: ()=> navigateListDetail(context),
        splashColor: Colors.green,
        borderRadius: BorderRadius.circular(15), 
        child: Container(
        padding:const EdgeInsets.all(10),
        child: Text(title, style: Theme.of(context).textTheme.title,),
        decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.pink.withOpacity(0.7),Colors.red.withOpacity(0.7)],
        begin: Alignment.topLeft, end: Alignment.topRight),
        borderRadius: BorderRadius.circular(15)),

      ),
    );
  }
}