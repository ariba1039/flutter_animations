import 'package:flutter/material.dart';
import 'package:flutter_animation/screens/listview_animations.dart';
import 'package:flutter_animation/screens/swipeablebuttonAnimation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SwipeableAnimatedButton(),
    );
  }
}
