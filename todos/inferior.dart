import 'package:flutter/material.dart';

void main() =>  runApp(const BottomNavigationBarExempleApp());
//Um widget de material exibido na parte inferior de um aplcativo para seleção entre um penqueno numero de exibições, geralmente entre tres e cinco.
class BottomNavigationBarExempleApp extends StatelessWidget{
  const BottomNavigationBarExempleApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: BottomNavigationBarExemple(),
    );
  }
}
class BottomNavigationBarExemple extends StatefulWidget{
  const BottomNavigationBarExemple({super.key});

  @override
  State<BottomNavigationBarExemple> createState() =>
    _BottomNavigationBarExempleState();

}
class _BottomNavigationBarExempleState extends State<BottomNavigationBarExemple>{
  int _selectedIndex = 0;
  static const TextStyle optionStyle = 
    TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget> [
    Text(
      'Texto 0: Home',
      style: optionStyle,
    ),  Text(
      'Texto 1: negocios',
      style: optionStyle,
    ),  Text(
      'Texto 2: escola',
      style: optionStyle,
    ),

  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex= index;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu inferior') ,
      ),
    body:  Center(
      child: _widgetOptions.elementAt(_selectedIndex),
    ),
    bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem> [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'negocios',
        ),        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'Escola',
        ),
      ],
      currentIndex: _selectedIndex, 
      selectedItemColor:  Colors.amber[800],
      onTap: _onItemTapped,
    ),
    );

}
}