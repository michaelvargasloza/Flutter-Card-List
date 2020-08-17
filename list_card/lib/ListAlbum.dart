import 'package:flutter/cupertino.dart';
import 'package:listcard/CardAlbum.dart';

import 'Album.dart';

class ListAlbum extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> ListAlbumState();
}

class ListAlbumState extends State<ListAlbum>{
  List<Album> albums = Album.albums();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
        itemCount: albums.length,
        itemBuilder: (BuildContext context, int index){
      return Dismissible(
        key: ObjectKey(albums[index]),
        child: CardAlbum(albums[index]),
        onDismissed: (direction){
          setState(() {
            albums.removeAt(index);
          });
        },
      );
    });
  }
}