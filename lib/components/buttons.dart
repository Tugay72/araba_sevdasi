import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Buttons extends StatelessWidget {
  final Function()? onTap;

  Buttons({super.key, required this.onTap, required this.yazi});
  String yazi = "";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 6, 2, 210),
                Color.fromARGB(255, 110, 0, 132),
              ],
            ),
            borderRadius: BorderRadius.circular(50)),
        child: Center(
          child: Text(
            yazi,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
