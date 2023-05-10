import 'package:flutter/material.dart';
import 'package:prova_flutter/acoes.dart';
import 'package:prova_flutter/bitcoin.dart';
import 'package:prova_flutter/principal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
     return  MaterialApp(
      debugShowCheckedModeBanner: false ,
       initialRoute: '/principal',
      routes: {
        '/principal' : (context ) => const Principal(),
        '/acoes' : (context ) => const Acoes(),
        '/bitcoin' : (context ) => const Bitcoin(),
      },
    );
  }
}