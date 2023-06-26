import 'package:flutter/material.dart';

/// Flutter code sample for [showModalBottomSheet].

void main() => runApp(const BottomSheetApp());

class BottomSheetApp extends StatelessWidget {
  const BottomSheetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        body: BottomSheetExample(),
      ),
    );
  }
}

class BottomSheetExample extends StatelessWidget {
  const BottomSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('showModalBottomSheet'),
        onPressed: () {
          showModalBottomSheet<dynamic>(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
            ),
            isScrollControlled: true,
            context: context,
            backgroundColor:   const Color(0xff184e77),
            builder: (BuildContext context) {
              return SizedBox(
                // decoration:
                // const BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)), 
                
                // color:   const Color(0xff184e77),
                // ),
                height: 600,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Padding(padding: EdgeInsets.only(top: 30 ),
                      child:Text('O que é o\nHelp Health?',
                            textAlign: TextAlign.center,
                            style:TextStyle(
                            color: Colors.white
                                  ),
                            ),  
                          ),
                      // Padding(padding: EdgeInsets.only(top: 30 ),),                       
                      // SingleChildScrollView(child:
                      Flexible(child: 
                      Padding(padding: EdgeInsets.only(top:30, left: 20, right: 20),
                      child: 
                       SizedBox(
                      
                       height: 600,
                        child: ColoredBox(color: Color(0xff1E6091),
                               child: Center(
                                      child:Text('Trata-se de um \n aplicativo de feedbacks, dada pelos \npacientes e cadastradas através dos \nfuncionários, sobre as unidades de \nsaúde publica da metropele de São Paulo, com o objetivo de \nfacilitar a vida do paciente ao \nprocurar uma unidade pública.\nNele você encontra a lotação da \nunidade,  tempo de espera de \natendimento e avaliação de \natendimento.',
                                      textAlign: TextAlign.center,
                                      style:TextStyle(
                                        color: Colors.white
                                      ),
                               )
                        ),
                        ),
                      ), 
                      ),
                      ),
                      
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
