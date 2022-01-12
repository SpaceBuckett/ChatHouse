import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Group {
  String groupName;
  String unreadTexts;
  String messageSenderAvatar;
  String messegeSenderName;
  String message;
  String timeAgo;
  Color cardColor;

  Group({
    required this.groupName,
    required this.unreadTexts,
    required this.messageSenderAvatar,
    required this.messegeSenderName,
    required this.message,
    required this.timeAgo,
    required this.cardColor,
  });
}

List<Group> groupsData = [
  Group(
    groupName: 'Flutter Community',
    unreadTexts: '3',
    messageSenderAvatar: 'assets/user1.jpg',
    messegeSenderName: 'Ronald',
    message: 'Lorem Ispum is a ...',
    timeAgo: '2 min',
    cardColor: const Color(0xFF8c9eff),
  ),
  Group(
    groupName: 'Github Community',
    unreadTexts: '1',
    messageSenderAvatar: 'assets/user3.jpg',
    messegeSenderName: 'Emtiaz',
    message: 'Lorem Ispum is a ...',
    timeAgo: '2 min',
    cardColor: const Color(0xFFe91e63),
  ),
  Group(
    groupName: 'Hardened Buddies',
    unreadTexts: '19',
    messageSenderAvatar: 'assets/user4.jpg',
    messegeSenderName: 'Zarar',
    message: 'Lorem Ispum is a ...',
    timeAgo: '2 min',
    cardColor: const Color(0xFF9c27b0),
  ),
  Group(
    groupName: 'Apsacians Bravos',
    unreadTexts: '1',
    messageSenderAvatar: 'assets/user2.jpg',
    messegeSenderName: 'Karar Khan',
    message: 'Lorem Ispum is a ...',
    timeAgo: '2 min',
    cardColor: const Color(0xFF00acc1),
  ),
];
