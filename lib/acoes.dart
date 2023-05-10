import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:prova_flutter/componentes/botao.dart';
import 'package:prova_flutter/componentes/caixaDeTextoMsg.dart';
import 'package:prova_flutter/componentes/caixaDeTextoMsg2.dart';

class Acoes extends StatefulWidget {
  const Acoes({super.key});

  @override
  State<Acoes> createState() => _AcoesState();
}



class _AcoesState extends State<Acoes> {

  final _formKey = GlobalKey<FormState>();

  
  telaBitcoin( ){
     Navigator.pushNamed(
          context,
          '/bitcoin',
        );
  }
  
  @override
  
  Widget build(BuildContext context) { 
    
    _criaBody() {
      return Center(
          child: Column(
            children: [
              
              Padding(padding:EdgeInsets.all(20),),

              Text('Ações'),

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
                          mensagem:'',
                        ),
                        CaixaDeTextoMsg2(
                          Width: 50,
                          height: 35,
                          font: 10,
                          mensagem:'',
                        ),

                        Padding(padding:const EdgeInsets.all(20),),
                    
                         CaixaDeTextoMsg(
                          Width: 130,
                          height: 30,
                          font: 20,
                          mensagem:'',
                        ),
                        CaixaDeTextoMsg2(
                          Width: 50,
                          height: 35,
                          font: 10,
                          mensagem:'',
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
                          mensagem: '',
                        ),
                        CaixaDeTextoMsg2(
                          Width: 50,
                          height: 35,
                          font: 10,
                          mensagem:'',
                        ),

                        Padding(padding:const EdgeInsets.all(20),),
                    
                         CaixaDeTextoMsg(
                          Width: 130,
                          height: 30,
                          font: 20,
                          mensagem:'',
                        ),
                        CaixaDeTextoMsg2(
                          Width: 50,
                          height: 35,
                          font: 10,
                          mensagem:'',
                        )
                       
                      ],
                    )

                  ]),
                ),
              ),

             Botao(
                funcao: telaBitcoin ,
                texto: " Ir para Bitcoin",

           ),
           
          
        ],
      ));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ações de Hoje'),
      ),
      body: _criaBody(),
    );
  }
}