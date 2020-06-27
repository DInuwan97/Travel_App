import 'package:flutter/material.dart';
import './screens/home_screen.dart';
import './side_screen_drawer.dart';
import 'package:device_preview/device_preview.dart';


void main() => runApp(

   DevicePreview(
      builder: (context) => MyApp(),
   )
  
  );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

     return MaterialApp(
      locale: DevicePreview.of(context).locale, // <--- Add the locale
      builder: DevicePreview.appBuilder, // <--- Add the builder

      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
        primaryColor: Color(0xFF3EBACE),
        accentColor: Color(0xFFD8ECF1),
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
      ),

      home: Scaffold(
      body: HomeScreen(),

      appBar:AppBar(
        title: Text('Travel',
          style:TextStyle(
            color:Colors.white
          )
        ),
        actions: <Widget>[

          IconButton(
            icon:Icon(Icons.search),
          ),
          IconButton(
            icon:Icon(Icons.more_vert),
            onPressed: (){ },
          ),
                  
        ],

      ),
         drawer:SideNavigationDrawer()

    )
     );

  }
}