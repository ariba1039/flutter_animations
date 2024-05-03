

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimations extends StatefulWidget {
  const LottieAnimations({super.key});

  @override
  State<LottieAnimations> createState() => _LottieAnimationsState();
}

class _LottieAnimationsState extends State<LottieAnimations>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 42, 28, 59) ,
      body: buildUI(),
      
    );
  }
  buildUI() {
  return Stack(
    children: [
      Center(
          child: Lottie.asset(
        'assets/animations/travel_animation.json',
        repeat: true,
        width: 250,
        height: 250,
      )),
      // Lottie.asset(
      //   'assets/animations/plane_animation.json',
      //   controller: _controller,
      //   width: 500,
      //   //MediaQuery.of(context).size.width,
      //   height: 500,

      //   // MediaQuery.of(context).size.height,
      //   fit: BoxFit.cover,
      //   repeat: false,
      // )
    ],
  );
}
}


