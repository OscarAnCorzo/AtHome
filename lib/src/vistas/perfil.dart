import 'package:flutter/material.dart';
import 'package:at_home/src/componentes/navBarra.dart';
import 'package:at_home/src/componentes/publicacion.dart';

class Perfil extends StatefulWidget {
  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil>{
  
  bool _bloque = true;
  int _colorF = 0xff000000;
  int _colorP = 0xaf000000;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text('Perfil'),
        backgroundColor: Color(0xff4CAF50),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child:CircleAvatar(
              backgroundColor: Colors.brown.shade800,
              child: ClipOval(
                child: Image.asset('lib/src/imagenes/20190730_120221-1.jpg',fit: BoxFit.fill,width: 200,height: 200),
              ),
              radius: 100,
            ),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.1,0.9],
                colors: [Color(0x9f4CAF50), Colors.white]
              )
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: InkWell(        
                    child: Padding(
                      padding: EdgeInsets.only(top:10.0, bottom:10.0),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.favorite, color: Color(_colorF)),
                          Text(' Favoritos',style: TextStyle(fontWeight: FontWeight.bold, fontSize:20.0, color: Color(_colorF) ))
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      )
                    ),
                    onTap: () { setState((){_bloque = true; _colorF = 0xff000000; _colorP = 0xaf000000;}); },                      
                  )
                ),
                Expanded(
                  child: InkWell(        
                    child: Padding(
                      padding: EdgeInsets.only(top:10.0, bottom:10.0),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.public, color: Color(_colorP)),
                          Text(' Publicado',style: TextStyle(fontWeight: FontWeight.bold, fontSize:20.0, color: Color(_colorP) ))
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      )
                    ),
                    onTap: () { setState((){_bloque = false; _colorP = 0xff000000; _colorF = 0xaf000000;}); },                      
                  ),
                )
              ]
            ),
            // padding: EdgeInsets.only(top:10.0, bottom:10.0),
            decoration: BoxDecoration(
              border:Border(
                top: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
                left: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
                right: BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F))
              )
            )
          ),
          if(_bloque)
            Container(
              child: Column(
                children: <Widget>[
                  Text('favoritos')
                ],
              ),
            )
          else Container(
              child: Text('hola'),
            )
        ]
      ),
      bottomNavigationBar: NavBarra(),
      floatingActionButton: BotonAdd(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked
    );
  }
}