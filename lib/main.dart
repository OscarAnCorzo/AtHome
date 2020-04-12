import 'package:flutter/material.dart';
import 'package:at_home/src/vistas/inicio.dart';

class Principal extends StatelessWidget{
  @override
  Widget build(context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Inicio()
    );
  }
}

void main() => runApp(Principal());


