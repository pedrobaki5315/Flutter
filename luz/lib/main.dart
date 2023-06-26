import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Interruptor em Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Interruptor(),
    );
  }
}

class Interruptor extends StatefulWidget {
  @override
  _InterruptorState createState() => _InterruptorState();
}

class _InterruptorState extends State<Interruptor> {
  bool luzEstaAcesa = false;

  void apaga() {
    setState(() {
      luzEstaAcesa = !luzEstaAcesa;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Interruptor da luz'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              luzEstaAcesa ? Icons.lightbulb : Icons.lightbulb_outline,
              size: 200,
              color: luzEstaAcesa ? Colors.yellow : Colors.grey,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: apaga,
              child: Text(luzEstaAcesa ? 'Apagar' : 'Acender'),
            ),
          ],
        ),
      ),
    );
  }
}
