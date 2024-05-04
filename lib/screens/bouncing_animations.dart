import 'package:flutter/material.dart';

class BouncingAnimation extends StatefulWidget {
  const BouncingAnimation({super.key});

  @override
  State<BouncingAnimation> createState() => _BouncingAnimationState();
}

class _BouncingAnimationState extends State<BouncingAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    )..repeat(reverse: true);
    _animation = Tween(begin: 0.0, end: 100.0).animate(_controller)
      ..addListener(() {
        setState(
          () {},
        );
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(31, 36, 12, 48),
      body: Center(
        child: Container(
          width: _animation.value,
          height: _animation.value,
          color: Colors.greenAccent,
        ),
      ),
    );
  }
}
