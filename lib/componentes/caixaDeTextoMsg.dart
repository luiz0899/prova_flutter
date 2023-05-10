import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CaixaDeTextoMsg extends StatefulWidget {

  final mensagem ;
  final height ;
  final Width ;
  final font ;

  const CaixaDeTextoMsg({super.key,this.mensagem,this.Width,this.height ,this.font});

  @override
  State<CaixaDeTextoMsg> createState() => _CaixaDeTextoMsgState();
}

class _CaixaDeTextoMsgState extends State<CaixaDeTextoMsg> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(0),
        child: SizedBox(
            width: widget.Width,
            height: widget.height,

              child: 
                  Text(widget.mensagem,
                  textAlign: TextAlign.start,
                  style:  TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: widget.font,
                      fontWeight: FontWeight.w100)),
            ));
  }
}
