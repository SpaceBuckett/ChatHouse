import 'package:chathouse/Constants/text_styles.dart';
import 'package:chathouse/apis/chats.dart';
import 'package:chathouse/apis/user.dart';
import 'package:chathouse/custom_widgets/circular_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({Key? key}) : super(key: key);
  User user = User();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          upperBar(),
          searchBar(),
          ListView.builder(
            padding: const EdgeInsets.all(8),
            shrinkWrap: true,
            itemCount: chatData.length,
            itemBuilder: (context, index) {
              return ChatCard(
                imageUrl: chatData[index].imageUrl!,
                userName: chatData[index].userName!,
                message: chatData[index].message!,
                timeAgo: chatData[index].timeAgo!,
                unReadTexts: chatData[index].unReadTexts!,
              );
            },
          )
        ],
      ),
    );
  }

  Padding searchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
      child: Container(
        height: 40,
        width: 370,
        decoration: BoxDecoration(
          color: Colors.grey[300]!.withOpacity(0.8),
          borderRadius: BorderRadius.circular(25),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: "Search",
            hintStyle: TextStyle(fontSize: 16, color: Colors.grey[500]!),
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              size: 24,
              color: Colors.grey[500],
            ),
          ),
          cursorColor: Colors.grey,
        ),
      ),
    );
  }

  Padding upperBar() {
    return Padding(
      padding: const EdgeInsets.only(top: 60.0, left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Chats',
            style: kHeadingText.copyWith(fontSize: 32),
          ),
          const Icon(
            Icons.add,
            size: 24,
          )
        ],
      ),
    );
  }
}

class ChatCard extends StatelessWidget {
  const ChatCard({
    Key? key,
    required this.imageUrl,
    required this.userName,
    required this.message,
    required this.timeAgo,
    required this.unReadTexts,
  }) : super(key: key);
  final String imageUrl;
  final String userName;
  final String message;
  final String timeAgo;
  final String unReadTexts;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      height: 70,
      width: 375,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              blurRadius: 2,
              spreadRadius: 1,
              color: Colors.grey[100]!,
              offset: const Offset(3, 3),
            )
          ]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleImage(
                  imageProvider: AssetImage(imageUrl),
                  imageRadius: 25,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        userName,
                        style: kHeadingText.copyWith(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        message,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  timeAgo,
                  style: TextStyle(color: Colors.grey[400]!),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 25,
                  width: 25,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      unReadTexts,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
