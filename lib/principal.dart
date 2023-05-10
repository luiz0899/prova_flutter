import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:http/http.dart';
import 'package:prova_flutter/componentes/botao.dart';
import 'package:prova_flutter/componentes/caixaDeTextoMsg.dart';
import 'package:prova_flutter/componentes/caixaDeTextoMsg2.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {

  final _formKey = GlobalKey<FormState>();
  //moedas
  double dollar = 0.0 ;
  double yen = 0.0 ;
  double euro = 0.0;
  double peso = 0.0;

  double varDollar = 0.0 ;
  double varYen = 0.0 ;
  double varEuro = 0.0;
  double varPeso = 0.0;
  //Ações
  double ibovespa = 0.0;
  double nasdaq = 0.0;
  double cac = 0.0;
  double ifix = 0.0 ;
  double dowJones = 0.0 ;
  double nikkei = 0.0 ; 

  double variBovespa = 0.0;
  double varNasdaq = 0.0;
  double varCac = 0.0;
  double varIfix = 0.0 ;
  double varDowJones = 0.0 ;
  double varNikkei = 0.0 ; 
  
  //BitCoin

   double Blockchain = 0.0;
   double bitStamp = 0.0;
   double mercadoBit = 0.0; 
   double coinBase = 0.0 ;
   double foxBit = 0.0 ;

   double varBlockchain = 0.0;
   double varBitStamp = 0.0;
   double varMercadoBit = 0.0; 
   double varCoinBase = 0.0 ;
   double varFoxBit = 0.0 ;
  
  @override
  void initState() {
    super.initState();
    buscarEndereco();
  }

  buscarEndereco() async {
  final String urlViaCep = 'https://api.hgbrasil.com/finance?key=dacba3a8&format=json-cors';
  Response respFinance = await get(Uri.parse(urlViaCep));
  Map valFinance= json.decode(respFinance.body);

  //modeda
  setState(() {

      //modeda
      dollar = valFinance ['results']['currencies']['USD']['buy'];
      yen = valFinance ['results']['currencies']['JPY']['buy'];
      euro = valFinance ['results']['currencies']['EUR']['buy'];
      peso = valFinance ['results']['currencies']['ARS']['buy'];
      //variação moeda 
      varDollar = valFinance ['results']['currencies']['USD']['variation'];
      varYen = valFinance ['results']['currencies']['JPY']['variation'];
      varEuro = valFinance ['results']['currencies']['EUR']['variation'];
      varPeso = valFinance ['results']['currencies']['ARS']['variation'];
      //acões
      ibovespa = valFinance ['results']['stocks']['IBOVESPA']['points'];
      nasdaq = valFinance ['results']['stocks']['NASDAQ']['points'];
      cac = valFinance ['results']['stocks']['CAC']['points'];
      ifix = valFinance ['results']['stocks']['IFIX']['points'];
      dowJones = valFinance ['results']['stocks']['DOWJONES']['points'];
      nikkei = valFinance ['results']['stocks']['NIKKEI']['points'];
      //variação moeda 
      variBovespa = valFinance ['results']['stocks']['IBOVESPA']['variation'];
      varNasdaq = valFinance ['results']['stocks']['NASDAQ']['variation'];
      varCac = valFinance ['results']['stocks']['CAC']['variation'];
      varIfix = valFinance ['results']['stocks']['IFIX']['variation'];
      varDowJones = valFinance ['results']['stocks']['DOWJONES']['variation'];
      varNikkei = valFinance ['results']['stocks']['NIKKEI']['variation'];
      //bitCoin
      Blockchain = valFinance ['results']['stocks']['blockchain_info']['buy'];
      coinBase = valFinance ['results']['stocks']['coinbase']['buy'];
      bitStamp = valFinance ['results']['stocks']['bitstamp']['buy'];
      foxBit = valFinance ['results']['stocks']['foxbit']['buy'];
      mercadoBit = valFinance ['results']['stocks']['mercadobitcoin']['buy'];
     //variações bitCoin
      varBlockchain = valFinance ['results']['stocks']['blockchain_info']['variation'];
      varCoinBase = valFinance ['results']['stocks']['coinbase']['variation'];
      varBitStamp = valFinance ['results']['stocks']['bitstamp']['variation'];
      varFoxBit = valFinance ['results']['stocks']['foxbit']['variation'];
      varMercadoBit = valFinance ['results']['stocks']['mercadobitcoin']['variation'];
     
      

  }); 
  
  }
  telaAcoes() {

        Navigator.pushNamed(
          context,
          '/acoes',
        arguments: ibovespa,
        );
  }
  
  @override
  Widget build(BuildContext context) {
    _criaBody() {
      return Center(
          child: Column(
            children: [
              
              Padding(padding:EdgeInsets.all(20),),

              Text('Moedas'),

              Padding(padding:EdgeInsets.all(20),),

              Container(
                width: 600,
                height: 350,
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 7, 7, 7), width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Form(
                  key: _formKey,
                  child: Column(children: [

                     Padding(padding:const EdgeInsets.all(40),),
                    
                    Row(
                      
                       children: [

                        Padding(padding:const EdgeInsets.all(40),),
                      
                        CaixaDeTextoMsg(
                          Width: 130,
                          height: 30,
                          font: 20,
                          mensagem:'Dólar : ' + dollar.toString(),
                        ),
                        CaixaDeTextoMsg2(
                          Width: 50,
                          height: 35,
                          font: 10,
                          mensagem:varDollar.toString(),
                        ),

                        Padding(padding:const EdgeInsets.all(20),),
                    
                         CaixaDeTextoMsg(
                          Width: 130,
                          height: 30,
                          font: 20,
                          mensagem:'Euro : ' + euro.toString(),
                        ),
                        CaixaDeTextoMsg2(
                          Width: 50,
                          height: 35,
                          font: 10,
                          mensagem:varEuro.toString(),
                        )
                      
                       ]
                    ),
                    Row(
                      children: [
                        Padding(padding:const EdgeInsets.all(40),),
                      
                        CaixaDeTextoMsg(
                          Width: 130,
                          height: 30,
                          font: 20,
                          mensagem:'Peso : ' + peso.toString(),
                        ),
                        CaixaDeTextoMsg2(
                          Width: 50,
                          height: 35,
                          font: 10,
                          mensagem:varDollar.toString(),
                        ),

                        Padding(padding:const EdgeInsets.all(20),),
                    
                         CaixaDeTextoMsg(
                          Width: 130,
                          height: 30,
                          font: 20,
                          mensagem:'Yen : '+ yen.toString(),
                        ),
                        CaixaDeTextoMsg2(
                          Width: 50,
                          height: 35,
                          font: 10,
                          mensagem:varYen.toString(),
                        )
                       
                      ],
                    )

                  ]),
                ),
              ),

             Botao(
                funcao: telaAcoes ,
                texto: " Ir para Ações",

           ),
           
          
        ],
      ));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Finanças de Hoje'),
      ),
      body: _criaBody(),
    );
  }
}
