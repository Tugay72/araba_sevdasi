import 'package:araba_sevdasi/kayitliArabalar/araba_liste.dart';
import 'package:flutter/material.dart';

class arabaDondur extends StatelessWidget {
  arabaDondur();
  @override
  Widget build(BuildContext context) {
    var liste = arabaListe.arabaliste;
    return SizedBox(
      child: ListView.builder(
        itemCount: liste.length,
        itemBuilder: (context, i) => ListTile(
          title: Text(
            liste[i].marka + " " + liste[i].model,
            style: const TextStyle(
              fontSize: 25,
              fontFamily: "Oswald",
              fontWeight: FontWeight.w400,
            ),
          ),
          subtitle: Text(
            liste[i].yil.toString(),
            style: const TextStyle(
              fontSize: 20,
              fontFamily: "Oswald",
              fontWeight: FontWeight.w400,
            ),
          ),
          onTap: () {},
        ),
      ),
    );
  }
}
