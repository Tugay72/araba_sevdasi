//import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:path_provider/path_provider.dart';

class Sozlesme extends StatefulWidget {
  @override
  State<Sozlesme> createState() => SozlesmeState();
}

class SozlesmeState extends State<Sozlesme> {
  String content = "";

  @override
  void initState() {
    super.initState();
    _readFile();
  }

  Future<void> _readFile() async {
    try {
      String filePath = 'assets/dosya/dosya.txt';
      String fileContent = await readFile(filePath);

      setState(() {
        content = fileContent;
      });
    } catch (e) {
      print("Hata oluştu $e");
    }
  }

  Future<String> readFile(String filePath) async {
    try {
      String content = await rootBundle.loadString(filePath);
      return content;
    } catch (e) {
      throw Exception('Dosya okuma hatası: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms and Conditions'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                content,
                style: const TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
