import 'package:flutter/material.dart';
import 'text.dart';
import 'proj01.dart';
import 'lista.dart';

void main() =>  runApp(const BottomNavigationBarExempleApp());
//Um widget de material exibido na parte inferior de um aplcativo para seleção entre um penqueno numero de exibições, geralmente entre tres e cinco.
class BottomNavigationBarExempleApp extends StatelessWidget{
  const BottomNavigationBarExempleApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
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
    // Text(
    //   'Texto 0: Home',
    //   style: optionStyle,
    // ),  Text(
    //   'Texto 1: negocios',
    //   style: optionStyle,
    // ),  Text(
    //   'Texto 2: escola',
    //   style: optionStyle,
    // ),
  ShoppingList(      products: [
        Product(name: 'Eggs'),
        Product(name: 'Flour'),
        Product(name: 'chocolate')
      ],),
  WidgetBasicos(),
  MyButton()


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
        backgroundColor: Color.fromARGB(255, 248, 0, 0),
        title: const Text('Modelo de Menu'),
        actions: <Widget>[
          //colocar todos os icones aqui dentro

          IconButton(
            icon: const Icon(Icons.notification_add),
            tooltip: 'Notificaçoes' , // Legenda do icone
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('voce tem notificaçoes!')));
            },
          ),

          IconButton(
          icon: const Icon(Icons.reorder),
          tooltip: 'Menu',
          onPressed: (){},
          ),

          IconButton(
            icon: const Icon(Icons.person),
            tooltip: 'Perfil',
            onPressed: (){},
            ),
          
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Proxima Pagina',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Pagina anterior'),
                    ),
                    body: const Center(child: Text('Segunda pagina', style: TextStyle(fontSize: 24),)),
                  );
                })
              );
            },
            )


        ],
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