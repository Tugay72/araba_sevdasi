import 'package:flutter/material.dart';

class Calculate extends StatefulWidget {

  final String distance;

  const Calculate({super.key, required this.distance});

  @override
  State<Calculate> createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {



  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("cal")),
    );
  }

  
}