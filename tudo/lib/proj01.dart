import 'package:flutter/material.dart';
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: MyButton(),
        ),
      ), 
    )
  );
}



class MyButton extends StatelessWidget{
  const MyButton ({super.key});

  @override
  Widget build(BuildContext context){
    return GestureDetector( // widget nao possui uma representação visual, mas ele detetecta os gestos do usuario.
      onTap: () {
        print('Pagina teste');
      },
      
      child: Container(
        height: 50.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Color.fromRGBO(43, 211, 189, 1),
        ),
          child: const Center(
            child: Text('Entrar'),
          ),
      ),
    );
  }
}