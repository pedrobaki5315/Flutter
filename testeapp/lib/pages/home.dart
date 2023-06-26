import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget{
  const HomeWidget({Key? key}) : super(key: key);
    @override
  _HomeWidget createState() => _HomeWidget();
}
class _HomeWidget extends State<HomeWidget> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina Teste'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network('https://picsum.photos/seed/743/600',
                        width: 390,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
              )
            ],
          ),
          Stack(
            children: [
             Padding(padding: const EdgeInsets.only(top: 15),
              child: 
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'E-mail',
                  labelText: 'E-mail *',
                ),
              ),
              ),
              Padding(padding: const EdgeInsets.only(top: 95),
                child: 
                TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Senha',
                  labelText: 'Senha *',
                ),
              ),
              ),
              Padding(padding: const EdgeInsets.only(top: 15),
                child: 
                
              ),
            ],
          )

          ],
      ),
    );


  }
}























