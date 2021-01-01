import 'package:flutter/material.dart';
import 'package:itsmemack/LoginScreen.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Name",
      home: new Login(),
    );
  }
}
