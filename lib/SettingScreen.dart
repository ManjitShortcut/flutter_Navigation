import 'package:flutter/material.dart';
class SettingScreen extends StatelessWidget {
static const  String routeName = "/setting";
String _pageTitle;
  @override
  Widget build(BuildContext context) {
    final argValue = ModalRoute.of(context).settings.arguments as String;
     _pageTitle = argValue;
    return Scaffold(
      appBar: AppBar(title:Text(_pageTitle)),
    );
  }
}