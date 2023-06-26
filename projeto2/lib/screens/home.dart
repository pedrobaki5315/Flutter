import 'package:flutter/material.dart';
import 'package:projeto2/screens/components/account_actions.dart';
import 'package:projeto2/screens/components/account_points.dart';
import 'package:projeto2/screens/components/sections/header.dart';
import 'package:projeto2/screens/components/sections/recent_activity.dart';

class Home extends StatelessWidget{
  const Home ({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children:  const <Widget>[
          Luz()
      ],
      ),
    );
  }
}