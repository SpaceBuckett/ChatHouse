import 'package:flutter/material.dart';

class Story {
  String? userName;
  String? imageUrl;
  Color? colour;

  Story({this.userName, this.imageUrl, this.colour});
}

List<Story> stories = [
  Story(
      userName: 'Jhona',
      imageUrl: 'assets/user1.jpg',
      colour: const Color(0xFFc51162)),
  Story(
      userName: 'Hex',
      imageUrl: 'assets/user2.jpg',
      colour: const Color(0xFFe040fb)),
  Story(
      userName: 'Alizay',
      imageUrl: 'assets/user3.jpg',
      colour: const Color(0xFFff7043)),
  Story(
      userName: 'Dorta',
      imageUrl: 'assets/user4.jpg',
      colour: const Color(0xFFa255ff)),
];
