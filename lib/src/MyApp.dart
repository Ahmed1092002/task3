import 'package:flutter/material.dart';
import 'package:main_manu_area/screans/main_Screans.dart';

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: [Color(0xFF5B5EE6), Color(0xFF916CFF)],
      begin: Alignment.topLeft,
      end: Alignment.topRight,
     ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
    return MaterialApp(
      theme: ThemeData(
        navigationBarTheme:NavigationBarThemeData(
          labelTextStyle: MaterialStateProperty.all(TextStyle(fontSize: 15,foreground:  Paint()..shader = linearGradient)  ))
        ),

debugShowCheckedModeBanner: false,
      home:MainScrean(

      ) ,
    );
  }
}