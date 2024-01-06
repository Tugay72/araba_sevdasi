import 'package:araba_sevdasi/profilListe/kullanici_listesi.dart';
import 'package:araba_sevdasi/profilListe/profil_class.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfilDondur extends StatelessWidget {
  List<String> baslik = ["Ad", "Soyad", "Şehir", "Email"];
  List<ProfilClass> liste = KullaniciListesi.kullaniciListesi;

  String listeDondur(index) {
    if (liste.isNotEmpty && index >= 0 && index < liste.length) {
      ProfilClass kullanici = liste[index];
      switch (index) {
        case 0:
          return kullanici.ad;
        case 1:
          return kullanici.soyAd;
        case 2:
          return kullanici.sehir;
        case 3:
          return kullanici.email;
      }
    }
    return "Bilgi Yok";
  }

  ProfilDondur(this.liste);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 280,
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              listeDondur(index),
              style: const TextStyle(
                fontSize: 18,
                fontFamily: "Oswald",
                fontWeight: FontWeight.w400,
              ),
            ),
            subtitle: Text(
              baslik[index],
              style: const TextStyle(
                fontSize: 14,
                fontFamily: "Oswald",
                fontWeight: FontWeight.w400,
              ),
            ),
          );
        },
      ),
    );
  }
}
