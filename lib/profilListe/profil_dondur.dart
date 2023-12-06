import 'package:araba_sevdasi/profilListe/profil_yapisi.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfilDondur extends StatelessWidget {
  List<ProfilYapisi> liste = [];

  ProfilDondur(this.liste);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 392,
      child: ListView.builder(
        itemCount: liste.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              liste[index].icerik,
              style: TextStyle(
                fontFamily: "Oswald",
                fontWeight: FontWeight.w400,
              ),
            ),
            subtitle: Text(
              liste[index].baslik,
              style: TextStyle(
                fontFamily: "Oswald",
                fontWeight: FontWeight.w400,
              ),
            ),
            trailing: TextButton(
              child: const Icon(Icons.edit),
              onPressed: () {},
            ),
          );
        },
      ),
    );
  }
}
