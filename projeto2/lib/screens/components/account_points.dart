import 'package:flutter/material.dart';
import 'package:projeto2/screens/components/box_card.dart';
import 'package:projeto2/screens/components/color_dot.dart';
import 'package:projeto2/screens/components/content_division.dart';
import 'package:projeto2/screens/components/themes/theme_colors.dart';



class AccountPoints extends StatelessWidget{
  const AccountPoints({Key? key}) : super (key: key);
 
 @override
 Widget build(BuildContext context){
  return Padding(
    padding: const EdgeInsets.all(16),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Text(
          'Pontos da conta',
          style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        
      ]
    )
  );
 }
}

class AccountPointsInfo extends StatelessWidget{
  const AccountPointsInfo({Key? key}) : super (key: key);

@override
Widget build(BuildContext context){
  return const Padding(
    padding: EdgeInsets.all(16) ,
    child: BoxCard(boxContent: _AccountPointsInfo()),

  );
}
}

class _AccountPointsInfo extends StatelessWidget{
  const _AccountPointsInfo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                 const Text('Pontos totais:'),
                  Text('3000', style: Theme.of(context).textTheme.bodyLarge,)
                ],
              ),
            ],
          ),

        ],
      ),


      const Padding(
        padding: EdgeInsets.only(top: 8.0, bottom: 8.8),
        child: ContentDivision(),
      ),Row(
        children: [
          Text('Objetivos:', style: Theme.of(context).textTheme.titleLarge),
          
        ]
      ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: ColorDot(color: ThemeColors.recentActivity['dotLar']),
                 ),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start ,
                  children: [
                    Text('Entrega Gratis: 15000 pts', style: Theme.of(context).textTheme.titleMedium)
                    
                  ],
                 )
            ],
          ),
         Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: ColorDot(color: ThemeColors.recentActivity['dotAzul']),
                 ),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start ,
                  children: [
                    Text('1 mês de streaming: 30000 pts', style: Theme.of(context).textTheme.titleMedium)
                    
                  ],
                 )
            ],
          )
    ],
  );
  }
}
