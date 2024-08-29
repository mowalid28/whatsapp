import 'package:facebookstory/view/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(facebookStory());
}

class facebookStory extends StatelessWidget {
  const facebookStory({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: homeView(),
    );
  }
}
