import 'package:facebookstory/models/user_model.dart';
import 'package:facebookstory/view/home_view.dart';
import 'package:flutter/material.dart';

class friend extends StatelessWidget {
  friend({super.key, required this.obj});
  StoryDatarColumn obj;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage(obj.image!),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Container(
                child: Text(
                  obj.name!,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.videocam_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.phone_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/ts7vuoswhwf41.webp'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Message',
                  fillColor: Colors.grey[900],
                  filled: true,
                  isCollapsed: false,
                  prefixIcon: Icon(Icons.emoji_emotions),
                  suffixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.attach_file),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.camera_alt_outlined),
                      ),
                    ],
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(36),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
