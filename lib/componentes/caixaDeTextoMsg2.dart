import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CaixaDeTextoMsg2 extends StatefulWidget {

  final mensagem ;
  final height ;
  final Width ;
  final font ;

  const CaixaDeTextoMsg2({super.key,this.mensagem,this.Width,this.height ,this.font});


  @override
  State<CaixaDeTextoMsg2> createState() => _CaixaDeTextoMsg2State();
}

class _CaixaDeTextoMsg2State extends State<CaixaDeTextoMsg2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(0),
        child: SizedBox(
            width: widget.Width,
            height: widget.height,
            child: Card(
              color:Color.fromARGB(255, 0, 153, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: const BorderSide(
                    color: Color.fromARGB(255, 133, 133, 133), width: 1),
              ),
              child: Text(widget.mensagem,
                  textAlign: TextAlign.center,
                  style:  TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: widget.font,
                      fontWeight: FontWeight.bold)),
            )));
  }
}
