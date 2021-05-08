import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
        ],
      ),
     
      
    );
  }

  Widget _cardTipo1() {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon( Icons.photo_album, color: Colors.blue),
            title: Text('Titulo Card'),
            subtitle: Text('Aqui se muestra la descripción'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                onPressed: (){}, 
                child: Text('Cancelar')
              ),
              FlatButton(
                onPressed: (){}, 
                child: Text('Ok')
              ),
            ],
            )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Card(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[

          FadeInImage(
            image: CachedNetworkImageProvider('https://i.pinimg.com/originals/b9/a5/d7/b9a5d7d68e5851cbd363044a8a2ce77d.jpg'),
            placeholder:  AssetImage('assets/loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
            ),


          /* Image(
            image: NetworkImage('https://i.pinimg.com/originals/b9/a5/d7/b9a5d7d68e5851cbd363044a8a2ce77d.jpg')
          ), */
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('have no idea for a weekend'),
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0), 
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0,10.0),
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40.0),
        child: card,
      ),
    );
  
  }
}