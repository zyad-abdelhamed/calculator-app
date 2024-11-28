
import 'package:e_commerce/calcu.dart';
import 'package:e_commerce/component.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Cal(), 
      debugShowCheckedModeBanner: false,
      routes: {
        "scale" :(context) => Scale()
      },
    );
  }
} 




