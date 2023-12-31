
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widget Texto',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const WidgetBasicos(),
    );
  }
}

class WidgetBasicos extends StatelessWidget{
  const WidgetBasicos({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(

    body: Container(
      color: Colors.white,
      child: widgetTextField(),
      ),
    );
  }
  widgetTextField(){
    return const TextField();
  }
}