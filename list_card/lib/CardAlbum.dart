import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Album.dart';

class CardAlbum extends StatelessWidget{
  Album album;
  CardAlbum(this.album);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell (
      onTap: (){
        Scaffold.of(context).showSnackBar(SnackBar(content: Text("Artista: " + album.title)));
      },
        child: Card(
          child: Column(
            children: <Widget>[
              Container(
                height: 144.0,
                width: 500.0,
                color: album.color,
                child: Image.asset(album.image, height: 144.0, width: 160.0,),
              ),
              padding(Text(album.title, style: TextStyle(fontSize: 18.0))),
              Row(children: <Widget> [
                padding(Icon(Icons.mic)),
                padding(Text(album.name, style: TextStyle(fontSize: 18.0)))
              ]),
            ],
          ),
        ));
  }

  Widget padding(Widget widget){
    return Padding(padding: EdgeInsets.all(7.0), child: widget,);
  }
}