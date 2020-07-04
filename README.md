# restuarnt_app

Here you can find out how we can naavigaTE TO screen using routename  and push route
How to use route 
1. At the time of initilization of material app we have to set route name at main file .
Example
Using route
//
## Usage

```
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
    Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData()
      routes:{
      // initila route means initila scren
      '/':(ctx) = Home(),
      '/settingSceen':(ctx) = SettingScreen()
      } // predefine routes
      onGenerateRoute:(settings){
      // check route name  from setting
      if setting.name {
        return MaterialPageRoute(build:(ctx)=>Home())
      } // dynamic routes
      onUnknownRoute:(settings){
      }
    }// fallback routes// if not possible to push the route then it will fallback on unknonroutes 
    Using navigatorPush
    Navigator.of(ctx).push(MaterialPageRoute(build:(ctx){
    return Home()
    } 
    using navigator route
    Navigator.of(ctx).pushname("setting"); // route name
    Navigator.of(ctx).pushname("setting", argument:"argumanet value "); argument which is object
    //. get argument from next screen
   
  class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final argValue = ModalRoute.of(context).settings.arguments as String;
     _pageTitle = argValue;
    return Scaffold(
      appBar: AppBar(title:Text(_pageTitle)),
    );
  }
}
}
```
