import 'package:araba_sevdasi/pages/anasayfa/calculatePage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationCalculate extends StatefulWidget {

  final String distance;

  const AnimationCalculate({super.key, required this.distance});

  @override
  State<AnimationCalculate> createState() => _AnimationCalculateState();
}

class _AnimationCalculateState extends State<AnimationCalculate> with SingleTickerProviderStateMixin {

  // Controller
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();

    _controller.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/anasayfa/yellowToRed.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Lottie.asset(
            'assets/animation/fuel_box_animation.json',
            controller: _controller,
            onLoaded: (composition) {
              _controller
              ..duration = composition.duration
              ..forward().whenComplete(() => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Calculate(distance: widget.distance,))
              ));
            }
          ),
        ),
      ),
    );
  }
}
