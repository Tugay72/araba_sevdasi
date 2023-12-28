import 'package:flutter/material.dart';

class SuruseBasla extends StatefulWidget {
  @override
  State<SuruseBasla> createState() => SuruseBaslaState();
  const SuruseBasla({super.key});
}

class SuruseBaslaState extends State<SuruseBasla> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
        backgroundColor: Colors.yellow,
        foregroundColor: Theme.of(context).colorScheme.background,
      ),
      body: const Center(
        child: Text("Sürüşe başla"),
      ),
    );
  }
}
