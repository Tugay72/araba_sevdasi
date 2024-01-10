import 'package:araba_sevdasi/anaMenu.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationLogin extends StatefulWidget {
  const AnimationLogin({super.key});

  @override
  State<AnimationLogin> createState() => _AnimationLoginState();
}

class _AnimationLoginState extends State<AnimationLogin> with SingleTickerProviderStateMixin {

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
            image: AssetImage("assets/images/auth/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Lottie.asset(
            'assets/animation/fuel_bar_animation.json',
            controller: _controller,
            onLoaded: (composition) {
              _controller
              ..duration = composition.duration
              ..forward().whenComplete(() => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AnaMenu())
              ));
            }
          ),
        ),
      ),
    );
  }
}
