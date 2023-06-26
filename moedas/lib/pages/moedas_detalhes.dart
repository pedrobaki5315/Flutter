import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:moedas/moeda/moeda.dart';

class MoedaDetalhesPage extends StatefulWidget{
  Moeda moeda;
  MoedaDetalhesPage ({Key? key,required this.moeda}) :super (key: key);

@override
_MoedasDetalhesPageState createState() => _MoedasDetalhesPageState();

}

class _MoedasDetalhesPageState extends State<MoedaDetalhesPage>{
  NumberFormat real = NumberFormat.currency(locale: 'Pt_BR', name: 'R\$');
  final _form = GlobalKey<FormState>();
  final _valor = TextEditingController();
  double quantidade = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.moeda.nome),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Padding(padding:  EdgeInsets.only(bottom:24)),

            // const Divider(),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(widget.moeda.icone),
            ),
            Container(width: 10),
            Text(
              (widget.moeda.preco),
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
                letterSpacing: -1,
                color: Colors.grey[808]
              ),
            )
             ]
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Container(
                child: Text('$quantidade ${widget.moeda.sigla}'),
              ),
            ),
            Form(
              key: _form,
              child: TextFormField(
                controller: _valor,
                style: const TextStyle(
                  fontSize: 22),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "valor",
                    prefix: Icon(Icons.monetization_on_outlined),
                    suffix: Text('Reais', style: TextStyle(fontSize: 14),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  validator: (value) {
                    if(value!.isEmpty){
                      return 'Informe o valor da compra';
                    }else if(double.parse(value)<50){
                      return 'Compra minima é de R\$50,00';
                    }
                    return null;
                  },

              ),
            )
          ],
          
        ),
      ),
      
    );
  }
}