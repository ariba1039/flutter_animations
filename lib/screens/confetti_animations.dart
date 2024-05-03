import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class ConfettiAnimation extends StatefulWidget {
  const ConfettiAnimation({super.key});

  @override
  State<ConfettiAnimation> createState() => _ConfettiAnimationState();
}

class _ConfettiAnimationState extends State<ConfettiAnimation> {
  bool isplaying = false;
  final controller = ConfettiController();
  @override
  void initState() {
    super.initState();
    controller.play();
    // llisten to states playing , stopped
    controller.addListener(() {
      if (controller.state == ConfettiControllerState.stopped) {
        setState(() {
          isplaying = false;
        });
      } else if (controller.state == ConfettiControllerState.playing) {
        setState(() {
          isplaying = true;
        });
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      Stack(alignment: Alignment.center, children: [
        Scaffold(
          backgroundColor: const Color.fromARGB(255, 30, 2, 41),
          appBar: AppBar(
            title: const Center(child: Text('Confetti Animation')),
          ),
          body: Center(
              child: ElevatedButton(
            child: const Text('Play'),
            onPressed: () {
              if (isplaying) {
                controller.stop();
              } else {
                controller.play();
              }
            },
          )),
        ),
        ConfettiWidget(
          confettiController: controller,
          shouldLoop: true,
          // set direction
          blastDirection: pi / 2,
          // set the speed of the confetti
          minBlastForce: 2,
          maxBlastForce: 5,
          gravity: 0.2,           //0.0=>min, 1.0=>max
          emissionFrequency: 0.05, //0.0=>min, 1.0=>max
          
          numberOfParticles: 10,
        ),
      ]);
}
