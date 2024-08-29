import 'package:facebookstory/models/user_model.dart';
import 'package:facebookstory/widgets/circle_avatar.dart';
import 'package:facebookstory/widgets/circle_big.dart';
import 'package:flutter/material.dart';

class homeView extends StatelessWidget {
  homeView({super.key});

  // CircleAvatarWidget fun() {
  //   // List<CircleAvatarWidget> circleLIst = [];
  //   // CircleAvatarWidget x;
  //   for (int i = 0; i <= rowList.length; i++) {
  //      CircleAvatarWidget(
  //         image: rowList[0]['image'], name: rowList[0]['name']);
  //   }
  //   return fun();
  // }
  //for can work but with one widget but if you want more than you can use it in column or row

  List<StoryDatarColumn> listOfObject = [
    StoryDatarColumn(
        name: 'khaled', image: 'assets/images/download.jpeg', date: '23/4'),
    StoryDatarColumn(
        image: 'assets/images/download (1).jpeg', name: 'ali', date: '23/4'),
    StoryDatarColumn(
        image: 'assets/images/download (2).jpeg', name: 'nour', date: '23/4'),
    StoryDatarColumn(
        image: 'assets/images/download (3).jpeg',
        name: 'mohamed',
        date: '23/4'),
    StoryDatarColumn(
        image: 'assets/images/download (4).jpeg',
        name: 'youssef',
        date: '23/4'),
    StoryDatarColumn(
        image: 'assets/images/download (1).jpeg', name: 'ali', date: '23/4'),
    StoryDatarColumn(
        image: 'assets/images/download.jpeg', name: 'khaled', date: '23/4'),
    StoryDatarColumn(
        image: 'assets/images/download (2).jpeg', name: 'nour', date: '23/4'),
    StoryDatarColumn(
        image: 'assets/images/download (3).jpeg',
        name: 'mohamed',
        date: '23/4'),
    StoryDatarColumn(
        image: 'assets/images/download (4).jpeg',
        name: 'youssef',
        date: '23/4'),
    StoryDatarColumn(
        image: 'assets/images/download.jpeg', name: 'khaled', date: '23/4'),
    StoryDatarColumn(
        image: 'assets/images/download (1).jpeg', name: 'ali', date: '23/4'),
    StoryDatarColumn(
        image: 'assets/images/download (2).jpeg', name: 'nour', date: '23/4'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Story',
          style: TextStyle(fontFamily: 'Caveat'),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                children: [
                  for (int i = 0; i < listOfObject.length; i++)
                    CircleAvatarWidget(
                      obj: listOfObject[i],
                    ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 669,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  for (int i = 0; i < listOfObject.length; i++)
                    CircleAvatarbig(
                      obj: listOfObject[i],
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
