import 'package:flutter/material.dart';
import 'package:projeto/screens/components/box_card.dart';
import 'package:projeto/screens/components/color_dot.dart';
import 'package:projeto/screens/components/content_division.dart';
import 'package:projeto/screens/components/themes/theme_colors.dart';

class RecentActivity extends StatelessWidget{
  const RecentActivity({Key? key}) : super (key: key);

@override
Widget build(BuildContext context){
  return const Padding(
    padding: EdgeInsets.all(16) ,
    child: BoxCard(boxContent: _RecentActivityContent()),
  );
}
}

class _RecentActivityContent extends StatelessWidget{
  const _RecentActivityContent({Key? key}) : super(key: key);
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
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: ColorDot(color: ThemeColors.recentActivity['dotLar']),   
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                 const Text('Saída'),
                  Text('R\$50.00', style: Theme.of(context).textTheme.bodyLarge,)
                ],
              ),
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
                    const Text('Entrada'),
                    Text('R\$9090.00', style: Theme.of(context).textTheme.bodyLarge)
                    
                  ],
                 )
            ],
          )
        ],
      ),
        const Padding(
        padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
        child: Text('Limite de gastos: R\$7384.10'),
        ),
      Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5)
        ),
        child: const LinearProgressIndicator(
          value: 0.3,
          minHeight: 8,
          color: Color.fromRGBO(40, 218, 242, 1.0),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(top: 8.0, bottom: 8.8),
        child: ContentDivision(),
      ),
      const Text('Esee mês você gastou R\$ 50.00 com chocolate. Tente baixar esse custo!'),
      TextButton(onPressed: (){} ,
       child: const Text('Diga-me com!', style: TextStyle(
        fontSize: 16,
        color: Color.fromRGBO(40, 218, 242, 1.0),
        ),),)
    ],
  );
  }
}