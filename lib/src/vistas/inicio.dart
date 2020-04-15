import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Inicio extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    List<dynamic> imagenes = ['https://s3-us-west-2.amazonaws.com/artifactuprising/magento/blog/articles/2015-07-20-landscape-photo-tips/2015-07-20-landscape-photo-tips-00.jpg','https://www.tom-archer.com/wp-content/uploads/2018/06/milford-sound-night-fine-art-photography-new-zealand-400x291.jpg'];
    return Scaffold(
      // ------------------------------ AppBar ----------------------------------
      appBar: AppBar(
        title: Text('AtHome'),
        centerTitle: true,
        backgroundColor: Color(0xff4CAF50),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.filter_list), iconSize:35.0, onPressed: null)
        ],
      ),
      // ------------------------------- body ---------------------------------------
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(children: <Widget>[
                            Container(
                              child:Row(children: <Widget>[
                                          CircleAvatar(
                                            backgroundColor: Colors.brown.shade800,
                                            child: Text('AH'),
                                            radius: 27,
                                          ),
                                          Container(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children:<Widget>[
                                                Text('Nombre',style: TextStyle(fontWeight: FontWeight.bold, fontSize:17.0 )),
                                                Text('Ubicación',style: TextStyle(fontSize:15.0)),
                                                Text('\$200000', style: TextStyle(fontSize:15.0)),
                                              ]
                                            ),
                                            margin: EdgeInsets.only(left:5.0),
                                          )
                                        ],
                                      ),
                              margin: EdgeInsets.only(bottom:5.0)
                            ),
                            Container(
                              width: double.infinity,
                              height: 300.0,
                              child: Swiper(
                                itemBuilder: (BuildContext context,int index){
                                  return Image.network(imagenes[index],fit: BoxFit.fill,);
                                },
                                itemCount: 2,
                                pagination: SwiperPagination(),
                                control: SwiperControl(),
                              )
                            ),
                            Row(children: <Widget>[
                                  IconButton(icon: Icon(Icons.favorite_border, color:Colors.black), iconSize:30.0, onPressed: null),
                                  Text('Hace 2 horas')
                                ]
                            )
                          ]
                    ),
            margin: EdgeInsets.only(top: 10.0)
          ),
          Divider()
        ],
      ),
      // ------------------------------- BottomBar --------------------------------------
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50.0,
          child: Row(
            children: <Widget>[
              Expanded(
                child: IconButton(icon: Icon(Icons.home, color:Colors.black), iconSize:35.0, onPressed: null)
              ),
              Expanded(
                child: IconButton(icon: Icon(Icons.person), iconSize:35.0, onPressed: null)
              )
            ],
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment Counter',
        child: Icon(Icons.add),
        backgroundColor: Color(0xff4CAF50),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked
    );
  }
}