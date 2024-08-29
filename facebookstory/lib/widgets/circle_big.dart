import 'package:facebookstory/models/user_model.dart';
import 'package:facebookstory/view/friend.dart';
import 'package:facebookstory/view/home_view.dart';
import 'package:flutter/material.dart';

class CircleAvatarbig extends StatelessWidget {
  CircleAvatarbig({super.key, required this.obj});
  StoryDatarColumn obj;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, bottom: 15),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return friend(obj: obj);
              },
            ),
          );
        },
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 34,
                  backgroundImage: AssetImage(obj.image!),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    obj.name!,
                    style: TextStyle(
                        fontFamily: 'Caveat',
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Container(
                    child: Text(
                      obj.date!,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 0.4,
            ),
          ],
        ),
      ),
    );
  }
}
