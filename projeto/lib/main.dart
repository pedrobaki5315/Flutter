import 'package:flutter/material.dart';
import 'package:projeto/screens/components/themes/my_themes.dart';
import 'package:projeto/screens/home.dart';

void main() {
  runApp(const SenacInv());
}

class SenacInv extends StatelessWidget{
  const SenacInv ({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Senac Investimentos',
      theme: MyTheme,
      home: Home(),
    );
  }
}