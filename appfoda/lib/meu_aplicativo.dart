import 'package:appfoda/pages/app_page.dart';
import 'package:flutter/material.dart';


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
      home: const ProgressIndicatorApp(),
    );
  }
}