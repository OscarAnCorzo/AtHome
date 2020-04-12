import 'package:flutter/material.dart';

class Inicio extends StatelessWidget{
  @override
  Widget build(context){
    return Scaffold(
      appBar: AppBar(
        title: Text('AtHome'),
        centerTitle: true,
        backgroundColor: Color(0xff4CAF50),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.more_vert), onPressed: null)
        ],
      )
    );
  }
}