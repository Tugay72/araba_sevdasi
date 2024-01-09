import 'package:araba_sevdasi/profilListe/kullanici_listesi.dart';
import 'package:flutter/material.dart';

class Duzenle extends StatefulWidget {
  @override
  State<Duzenle> createState() => DuzenleState();
  Duzenle();
}

var liste = KullaniciListesi.kullaniciListesi;
TextEditingController adController = TextEditingController(text: liste[0].ad);
TextEditingController soyAdController =
    TextEditingController(text: liste[0].soyAd);
TextEditingController sehirController =
    TextEditingController(text: liste[0].sehir);
TextEditingController emailController =
    TextEditingController(text: liste[0].email);

class DuzenleState extends State<Duzenle> {
  void kaydet() {
    KullaniciListesi.kullaniciListesi[0].ad = adController.text;
    KullaniciListesi.kullaniciListesi[0].soyAd = soyAdController.text;
    KullaniciListesi.kullaniciListesi[0].sehir = sehirController.text;
    KullaniciListesi.kullaniciListesi[0].email = emailController.text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  Container(
                    width: 240,
                    child: TextField(
                      controller: adController,
                      decoration: InputDecoration(
                        label: const Text("Ad"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Container(
                    width: 240,
                    child: TextField(
                      controller: soyAdController,
                      decoration: InputDecoration(
                        label: const Text("Soyad"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Container(
                    width: 240,
                    child: TextField(
                      controller: sehirController,
                      decoration: InputDecoration(
                        label: const Text("Şehir"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Container(
                    width: 240,
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        label: const Text("E-mail"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    height: 55,
                    width: 140,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.green),
                        foregroundColor: MaterialStatePropertyAll(Colors.white),
                      ),
                      onPressed: () {
                        setState(
                          () {
                            kaydet();
                            Navigator.pop(context);
                          },
                        );
                      },
                      child: const Text(
                        "Kaydet",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
