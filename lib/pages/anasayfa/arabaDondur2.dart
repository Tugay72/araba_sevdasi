import 'package:flutter/material.dart';
import 'package:araba_sevdasi/pages/araba.dart';

// ignore: camel_case_types, must_be_immutable
class arabaDondur2 extends StatefulWidget {
  String mesafe;
  arabaDondur2({super.key, required this.mesafe});

  @override
  State<arabaDondur2> createState() => _arabaDondurState();
}

// ignore: camel_case_types
class _arabaDondurState extends State<arabaDondur2> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        itemCount: kayitliArabaListesi.length,
        itemBuilder: (context, index) {
          var araba = kayitliArabaListesi[index];
          return ListTile(
            title: Text(
              "${araba['marka']} ${araba['model']}",
              style: const TextStyle(
                fontSize: 25,
                fontFamily: "Oswald",
                fontWeight: FontWeight.w400,
              ),
            ),
            subtitle: Text(
              araba['uretimYil'].toString(),
              style: const TextStyle(
                fontSize: 20,
                fontFamily: "Oswald",
                fontWeight: FontWeight.w400,
              ),
            ),
            onTap: () {
              //Hesaplama fonksiyonları buraya olucak
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text(
                    "Sonuç:",
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: "Oswald",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  content: const Text(
                    "",
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: "Oswald",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text(
                        "Tamam",
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Oswald",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
