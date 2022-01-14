import 'package:get/get_connect/http/src/request/request.dart';

class Chat {
  String? imageUrl;
  String? userName;
  String? message;
  String? timeAgo;
  String? unReadTexts;
  Chat({
    required this.imageUrl,
    required this.userName,
    required this.message,
    required this.timeAgo,
    required this.unReadTexts,
  });
}

List<Chat> chatData = [
  Chat(
    imageUrl: 'assets/user1.jpg',
    userName: 'Alexa',
    message: 'Lorum Ispum is just a place holde...',
    timeAgo: '1 min',
    unReadTexts: '5',
  ),
  Chat(
    imageUrl: 'assets/user2.jpg',
    userName: 'Siri',
    message: 'Lorum Ispum is just a place holde...',
    timeAgo: '9 min',
    unReadTexts: '5',
  ),
  Chat(
    imageUrl: 'assets/user3.jpg',
    userName: 'Googlo',
    message: 'Lorum Ispum is just a place holde...',
    timeAgo: '19 min',
    unReadTexts: '3',
  ),
  Chat(
    imageUrl: 'assets/user1.jpg',
    userName: 'Qaweeta',
    message: 'Lorum Ispum is just a place holde...',
    timeAgo: '21 min',
    unReadTexts: '19',
  ),
];
