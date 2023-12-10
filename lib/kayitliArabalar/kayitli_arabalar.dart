import 'package:araba_sevdasi/kayitliArabalar/araba_dondur.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class kayitliArabalar extends StatefulWidget {
  @override
  kayitliArabalar({super.key});
  State<kayitliArabalar> createState() => kayitliArabalarState();
}

// ignore: camel_case_types
class kayitliArabalarState extends State<kayitliArabalar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Kayıtlı Arabalarım",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 46, 154, 255),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Center(
        child: arabaDondur(),
      ),
    );
  }
}

/*
ElevatedButton(
  child: Text("Geri Dön"),
  onPressed: () {
    Navigator.pop(context);
  },
),
*/
