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
  void basla(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Login()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Login(),
    );
  }
}

