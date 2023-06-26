import 'package:flutter/material.dart';
import 'inferior.dart';
import 'lista.dart';
import 'proj01.dart';
import 'text.dart';
import 'topo.dart';

void main() {
  runApp(
    BottomNavigationBarExempleApp(),
    );

}
class Tudo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
debugShowCheckedModeBanner: false,
      body: Column(
        children: [
         BottomNavigationBarExempleApp(),
        ],
      ),
    );
  }
}
// void main() {
//   runApp(BottomNavigationBarExempleApp());
// }

// class Tudo extends StatelessWidget {
//   // ...

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Exemplo'),
//         ),
//         body: Column(
//           children: [
//             BottomNavigationBarExemple(),
//             TopoAppBar(),
//           ],
//         ),
//       ),
//     );
//   }
// }
