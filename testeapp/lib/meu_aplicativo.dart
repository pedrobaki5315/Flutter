import 'package:flutter/material.dart';
import 'package:testeapp/pages/home.dart';


class MeuAplicativo extends StatelessWidget{
  const MeuAplicativo ({Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'criptoMoedas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo, 
      ),
      home: const HomeWidget(),
    );
  }
}