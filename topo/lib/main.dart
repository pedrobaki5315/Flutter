import 'package:flutter/material.dart';

void main() => runApp(const AppBarApp()); // igual a forma de baixo
// void main() {
//   runApp(const AppBar());
// }

class AppBarApp extends StatelessWidget{
  // AppBar é responsavel pelo topo (menu)
  const AppBarApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TopoAppBar() // chamada de aplicação
    );
  }
}

class TopoAppBar extends StatelessWidget{
  const TopoAppBar ({super.key});

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
      ), // uma barra de aplicativos que consiste em ferramentas e pode conter outros widgets
      body: const Center(
        child: Text('Conteudo da pagina home', 
        style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}