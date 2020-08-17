import 'dart:ui';
import 'package:flutter/material.dart';

class Album{
  String title;
  String name;
  Color color;
  String image;

  Album(this.title, this.name, this.image, this.color);

  static List<Album> albums(){
    return[Album("James Blunt", "You are beautiful", "img/blunt.jpg", Colors.blue),
      Album("The Cranberries", "Linger", "img/cranberries.jpg", Colors.yellow),
      Album("Keane", "Somewhere only we know", "img/keane.jpg", Colors.green),
      Album("Linkin Park", "Waiting for the end", "img/park.jpg", Colors.black)];
  }
}