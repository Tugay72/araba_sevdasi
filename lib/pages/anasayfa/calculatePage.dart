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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        foregroundColor: Theme.of(context).colorScheme.background,
      ),
      body: const Center(child: Text("calculate")),
    );
  }
}
