import 'package:flutter/material.dart';
import 'package:projeto/screens/components/account_actions.dart';
import 'package:projeto/screens/components/account_points.dart';
import 'package:projeto/screens/components/sections/header.dart';
import 'package:projeto/screens/components/sections/recent_activity.dart';

class Home extends StatelessWidget{
  const Home ({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children:  const <Widget>[
          Header(),
          RecentActivity(),
          AccountActions(),
          AccountPoints(),
          AccountPointsInfo()
      ],
      ),
    );
  }
}