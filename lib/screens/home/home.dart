import 'package:chathouse/Constants/colors.dart';
import 'package:chathouse/Constants/text_styles.dart';
import 'package:chathouse/apis/stories.dart';
import 'package:chathouse/apis/user.dart';
import 'package:chathouse/custom_widgets/circular_avatar.dart';
import 'package:chathouse/custom_widgets/story_circle_avatar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  User user = User();
  // Story story = Story();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          upperBar(user.userName, user.userImageUrl),
          storiesSection(),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Groups",
                        style: kHeadingText.copyWith(fontSize: 24),
                      ),
                      Row(
                        children: const [
                          Text(
                            'See all',
                            style:
                                TextStyle(fontSize: 16, color: kPrimaryColor),
                          ),
                          Icon(
                            Icons.arrow_right,
                            size: 22,
                            color: kPrimaryColor,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  height: 200,
                  width: 250,
                  decoration: BoxDecoration(
                    color: const Color(0xFF8c9eff),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0xFF8c9eff).withOpacity(0.4),
                          blurRadius: 10,
                          spreadRadius: 1,
                          offset: const Offset(5, 5))
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, right: 10, left: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Flexible(
                              flex: 2,
                              child: Text(
                                'Flutter Community',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.redAccent,
                              ),
                              child: const Center(
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 10.0,
                          left: 10,
                          bottom: 15,
                        ),
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleImage(
                                  imageRadius: 25,
                                  imageProvider: AssetImage(user.userImageUrl),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Corey Ana',
                                    style: kHeadingText.copyWith(fontSize: 16),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  const Text('Lorem Ispum is a ...'),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(right: 8.0, top: 8),
                                    child: Text(
                                      '3 min',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )

          // const SizedBox(
          //   width: 10,
          // ),
        ],
      ),
    );
  }

  Column storiesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40.0, left: 10, right: 10),
          child: Text(
            'Stories',
            style: kHeadingText.copyWith(fontSize: 24),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 115,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 10),
            itemCount: stories.length,
            itemBuilder: (BuildContext context, int index) {
              return storyCard(
                stories[index].userName!,
                stories[index].imageUrl!,
                stories[index].colour!,
              );
            },
          ),
        ),
      ],
    );
  }

  storyCard(String userName, String imageUrl, Color colour) {
    return SizedBox(
      // height: 110,
      // width: 95,
      child: Row(
        children: [
          Container(
            height: 110,
            width: 95,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.transparent),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[200]!,
                  spreadRadius: 1,
                  blurRadius: 0.5,
                  offset: const Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: Center(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StoryCircleImage(
                    imageProvider: AssetImage(imageUrl),
                    color: colour,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    userName,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }

  // Top bar which consist of the name, a tag line and an avatar
  Padding upperBar(String userName, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 65.0,
        left: 15,
        right: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "SpaceBucket",
                style: kHeadingText,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Let's reach your friends!",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          // CircleImage(

          const CircleImage(
            imageProvider: AssetImage('assets/profile_image.jpg'),
            imageRadius: 25,
          )
        ],
      ),
    );
  }
}
