import 'package:araba_sevdasi/anasayfaTabBar/suruseBasla.dart';
import 'package:araba_sevdasi/pages/anasayfa/map_screen.dart';
import 'package:flutter/material.dart';

class Sayfa extends StatelessWidget {
  const Sayfa({super.key});

  void git(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MapScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    var yolculuk = 5;
    var yol = 100;
    var yakit = 10;

    return Scaffold(
      body: Column(
        children: [
          //Harita görseli
          const SizedBox(
            width: 390,
            child: Center(
              child: Image(
                image: AssetImage("assets/images/anasayfa/map.jpeg"),
              ),
            ),
          ),
          const Divider(
            height: 40,
          ),
          //Yolculuğa başla tuşunun olduğu kısım
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: SizedBox(
              height: 160,
              width: 360,
              child: Card(
                surfaceTintColor: Colors.blueGrey.shade400,
                shadowColor: const Color.fromARGB(255, 255, 193, 40),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Happy Fuel'a Hoşgeldin!",
                        style: TextStyle(
                          fontSize: 32,
                          fontFamily: "Oswald",
                          fontWeight: FontWeight.w400,
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: SizedBox(
                        width: 240,
                        child: TextButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 255, 193, 40),
                            ),
                          ),
                          child: const Text(
                            "Yolculuğa Başla",
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: "Oswald",
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          onPressed: () => git(context),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Divider(
            height: 40,
          ),
          //İstatistikler
          Column(
            children: [
              Text(
                "İstatistiklerin",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: "Oswald",
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
              Row(
                children: [
                  //Yapılan yolculuk
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 6),
                    child: Container(
                      height: 100,
                      width: 120,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 193, 40),
                        borderRadius: BorderRadiusDirectional.vertical(
                          top: Radius.circular(10),
                          bottom: Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 48, bottom: 24),
                              child: Text(
                                "Yolculuk",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Oswald",
                                  fontWeight: FontWeight.w400,
                                  color:
                                      Theme.of(context).colorScheme.background,
                                ),
                              ),
                            ),
                            Text(
                              yolculuk.toString(),
                              style: TextStyle(
                                fontSize: 24,
                                fontFamily: "Oswald",
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).colorScheme.background,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //Gidilen yol (KM)
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 10),
                    child: Container(
                      height: 100,
                      width: 120,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 193, 40),
                        borderRadius: BorderRadiusDirectional.vertical(
                          top: Radius.circular(10),
                          bottom: Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 80, bottom: 24),
                              child: Text(
                                "Yol",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Oswald",
                                  fontWeight: FontWeight.w400,
                                  color:
                                      Theme.of(context).colorScheme.background,
                                ),
                              ),
                            ),
                            Text(
                              "${yol.toString()} KM",
                              style: TextStyle(
                                fontSize: 24,
                                fontFamily: "Oswald",
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).colorScheme.background,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //Harcanan yakıt(L)
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 10),
                    child: Container(
                      height: 100,
                      width: 120,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 193, 40),
                        borderRadius: BorderRadiusDirectional.vertical(
                          top: Radius.circular(10),
                          bottom: Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 72, bottom: 24),
                              child: Text(
                                "Yakıt",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Oswald",
                                  fontWeight: FontWeight.w400,
                                  color:
                                      Theme.of(context).colorScheme.background,
                                ),
                              ),
                            ),
                            Text(
                              "${yakit.toString()} L",
                              style: TextStyle(
                                fontSize: 24,
                                fontFamily: "Oswald",
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).colorScheme.background,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
