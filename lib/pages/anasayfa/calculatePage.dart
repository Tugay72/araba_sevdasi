import 'package:araba_sevdasi/pages/anasayfa/arabaDondur2.dart';
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
        title: const Text(
          "Arabayı Seçiniz:",
          style: TextStyle(
            fontSize: 26,
            fontFamily: "Oswald",
            fontWeight: FontWeight.w400,
          ),
        ),
        backgroundColor: Colors.yellow,
        foregroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Center(
        child: arabaDondur2(mesafe: widget.distance),
      ),
    );
  }
}
