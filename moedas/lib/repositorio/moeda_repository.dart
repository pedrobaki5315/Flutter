import 'package:moedas/moeda/moeda.dart';

class MoedaRepository{
  static List<Moeda> tabela =[
    Moeda(
      icone: 'images/bitcoin.png',
      nome: 'Bitcoin',
      sigla: 'Btc',
      preco: '164603.00'
      ),    
      Moeda(
      icone: 'images/ethereum.png',
      nome: 'Ethereum',
      sigla: 'Eth',
      preco: '9716.00'
      ),    
      Moeda(
      icone: 'images/xrp.png',
      nome: 'XRP',
      sigla: 'XRP',
      preco: '3.34'
      ),    
      Moeda(
      icone: 'images/cardano.png',
      nome: 'Cardano',
      sigla: 'ADA',
      preco: '6.32'
      ),      
      Moeda(
      icone: 'images/usdcoin.png',
      nome: 'USD Coin',
      sigla: 'USDC',
      preco: '5.02'
      ),
      Moeda(
      icone: 'images/litecoin.png',
      nome: 'LiteCoin',
      sigla: 'LTC',
      preco: '669.93'
      ),
  ];
}