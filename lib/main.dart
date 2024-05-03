import 'package:flutter/material.dart';
import 'package:flutter_animation/screens/confetti_animations.dart';
import 'package:flutter_animation/screens/lottie_animations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LottieAnimations(),
    );
  }
}
