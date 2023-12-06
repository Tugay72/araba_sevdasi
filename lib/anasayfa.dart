import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Anasayfa extends StatelessWidget {
  Anasayfa({super.key});
  // ignore: non_constant_identifier_names
  IconData directions_car = const IconData(0xe1d7, fontFamily: 'MaterialIcons');
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Anasayfa"),
      ),
    );
  }
}
