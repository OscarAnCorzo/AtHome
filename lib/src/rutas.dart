import 'package:flutter/material.dart';
import 'package:at_home/src/vistas/inicio.dart';
import 'package:at_home/src/vistas/perfil.dart';

Map<String,WidgetBuilder> getRutas(){
  return <String, WidgetBuilder>{
    'inicio': (BuildContext context) => Inicio(),
    'perfil': (BuildContext context) => Perfil()
  };
}