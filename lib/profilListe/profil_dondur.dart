import 'package:araba_sevdasi/profilListe/kullanici_listesi.dart';
import 'package:araba_sevdasi/profilListe/profil_class.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfilDondur extends StatelessWidget {
  List<String> baslik = ["Ad", "Soyad", "Şehir", "Email"];
  List<ProfilClass> kliste = KullaniciListesi.kullaniciListesi;

  String listeDondur(index) {
    //mail
    if (kliste.isEmpty) {
      return "boş";
    }

    // for(var eleman in kliste){
    //   if(eleman.email == mail){

    //   }
    // }

    if (index >= 0 && index < baslik.length) {
      ProfilClass kullanici = kliste[0];
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

  ProfilDondur(this.kliste);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 280,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: baslik.length,
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
