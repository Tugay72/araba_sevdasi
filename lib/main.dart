import 'package:flutter/material.dart';
import 'package:araba_sevdasi/pages/auth/signin.dart';

void main() {
  runApp(const Uygulama());
}

class Uygulama extends StatefulWidget {
  const Uygulama({super.key});
  @override
  State<Uygulama> createState() => UygulamaState();
}

class UygulamaState extends State<Uygulama> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Login(),
    );
  }
}
