import 'package:facebookstory/models/user_model.dart';
import 'package:facebookstory/view/home_view.dart';
import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  CircleAvatarWidget({
    super.key,
    required this.obj,
  });
  StoryDatarColumn obj;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundImage: AssetImage(obj.image!),
          ),
          Container(
            child: Text(
              obj.name!,
              style: TextStyle(fontFamily: 'Caveat', fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
