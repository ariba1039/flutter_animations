import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class SwipeableAnimatedButton extends StatefulWidget {
  const SwipeableAnimatedButton({super.key});

  @override
  State<SwipeableAnimatedButton> createState() =>
      _SwipeableAnimatedButtonState();
}

class _SwipeableAnimatedButtonState extends State<SwipeableAnimatedButton> {
  bool isfinished = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[300],
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 80,
          ),
          child: Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: SwipeableButtonView(
                  onFinish: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            child: const CompletedScreen()));
                  },
                  onWaitingProcess: () {
                    Future.delayed(const Duration(seconds: 1), () async {
                      setState(() {
                        isfinished = true;
                      });
                    });
                  },
                  isFinished: isfinished,
                  activeColor: Colors.orange,
                  buttonWidget: const Icon(
                    Icons.arrow_forward_ios,
                  ),
                  buttonText: '   Slider to pay ',
                ),
              ),
            ),
          ),
        ));
  }
}

class CompletedScreen extends StatelessWidget {
  const CompletedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Payment Completed',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
