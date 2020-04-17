import 'package:flutter/material.dart';
import 'package:at_home/src/rutas.dart';

class Principal extends StatelessWidget{
  @override
  Widget build(context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'inicio',
      routes: getRutas()
    );
  }
}

void main() => runApp(Principal());


