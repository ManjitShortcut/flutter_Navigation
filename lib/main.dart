import 'package:flutter/material.dart';
import './CategoryList_Screen.dart';
import './SettingScreen.dart';
import './FoodItemDetail.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(225, 225, 229, 1),
        fontFamily: 'OpenSans',
        textTheme: ThemeData.light().textTheme.copyWith(
          body1: TextStyle(color:Color.fromRGBO(20, 51, 51, 1)),
          body2: TextStyle(color:Color.fromRGBO(20, 51, 51, 1)),
          title: TextStyle(fontSize: 20,
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.bold
          ),
        ),
      ),
      routes:{
        '/':(ctx) =>  HomePage(),
        SettingScreen.routeName:(ctx) => SettingScreen(),
        FoodItemDetailUI.routeName:(ctx) => FoodItemDetailUI(),
      },
      // if you want dynamic route then call on generate route
      // 
      onGenerateRoute: (setting){
       print(setting.arguments); 
        //when user push route name here you can check out the route name when you push 
        //the route name you can also genearte th route like  this
       if (setting.name == "/detail"){
         return MaterialPageRoute (builder: (ctx)=>FoodItemDetailUI());  
       }
      },
      // fail
      onUnknownRoute: (setting){
        print(setting.arguments);
          /// it will call when there will fail to load any route
      },
    );
  }
}
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  void naivateSetting( BuildContext ctx) {
  Navigator.of(context).pushNamed(SettingScreen.routeName, arguments: "hello");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: 
    AppBar(title: Text("Food App"),
    actions: <Widget>[
      IconButton(icon: Icon(Icons.settings,
      color:Colors.white),
      onPressed:()=> naivateSetting(context),
      )
    ],
    ) ,
    body: Container(
      child: CategoryListUI(),
    ),
    );
  }
}

