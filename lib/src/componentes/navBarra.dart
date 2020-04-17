import 'package:flutter/material.dart';

class NavBarra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: Container(
        height: 50.0,
        child: Row(
          children: <Widget>[
            Expanded(
              child: IconButton(icon: Icon(Icons.home, color:Colors.black), iconSize:35.0, onPressed:() => Navigator.pushReplacementNamed(context,'inicio'))
            ),
            Expanded(
              child: IconButton(icon: Icon(Icons.person), iconSize:35.0, onPressed:() => Navigator.pushReplacementNamed(context,'perfil'))
            )
          ],
        ),
      )
    );
  }
}

class BotonAdd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: null,
      tooltip: 'Increment Counter',
      child: Icon(Icons.add),
      backgroundColor: Color(0xff4CAF50),
    );
  }
}