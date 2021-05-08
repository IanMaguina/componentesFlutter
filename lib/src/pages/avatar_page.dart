import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(7.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://pm1.narvii.com/6803/1a1b376038ae0cfa9074b1c2620250c2370a50acv2_128.jpg'),
              radius: 20.0,
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
     body: Center(
       child: FadeInImage(
         image: NetworkImage('https://cdn.wallpapername.com/1664x2472/20121025/yvonne%20strahovski%20chuck%20sarah%20walker%201664x2472%20wallpaper_www.wallpapername.com_42.jpg'),
         placeholder: AssetImage('assets/loading.gif'),
         fadeInDuration: Duration(milliseconds: 150),
       ),
     ),
      
    );
  }
}