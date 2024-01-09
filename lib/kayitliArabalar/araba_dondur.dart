import 'package:flutter/material.dart';
import 'package:araba_sevdasi/pages/araba.dart';

// ignore: camel_case_types
class arabaDondur extends StatefulWidget {
  const arabaDondur({super.key});

  @override
  State<arabaDondur> createState() => _arabaDondurState();
}

// ignore: camel_case_types
class _arabaDondurState extends State<arabaDondur> {
  void arabaSil(int index) {
    setState(() {
      kayitliArabaListesi.removeAt(index);
    });
  }

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
            trailing: TextButton(
              child: const Icon(Icons.remove_circle_outline_rounded),
              onPressed: () {
                arabaSil(index);
              },
            ),
            onTap: () {
              // seçili arabanın özelliklerini ve istatistiklerini görüntüleyen sayfa eklenecek
            },
          );
        },
      ),
    );
  }
}
