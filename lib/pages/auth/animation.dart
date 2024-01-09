import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationLogin extends StatefulWidget {
  const AnimationLogin({super.key});

  @override
  State<AnimationLogin> createState() => _AnimationLoginState();
}

class _AnimationLoginState extends State<AnimationLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset('assets/animation/fuel_bar.json'),
      ),
    );
  }
}
