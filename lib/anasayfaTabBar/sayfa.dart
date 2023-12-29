import 'package:araba_sevdasi/anasayfaTabBar/suruseBasla.dart';
import 'package:flutter/material.dart';

class Sayfa extends StatelessWidget {
  const Sayfa({super.key});

  void git(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SuruseBasla()),
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
          Container(
            color: Colors.black,
            child: const SizedBox(
              height: 200,
              width: 393,
              child: Center(
                child: Text(
                  "Buraya harita fotoğrafı gelecek",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          //Yolculuğa başla tuşunun olduğu kısım
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SizedBox(
              height: 160,
              width: 370,
              child: Card(
                surfaceTintColor: Colors.blueGrey.shade400,
                shadowColor: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Happy Fuel'a Hoşgeldin!",
                        style: TextStyle(
                          fontSize: 37,
                          fontFamily: "Oswald",
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 254, 207, 0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: SizedBox(
                        width: 270,
                        child: TextButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 254, 207, 0),
                            ),
                          ),
                          child: Text(
                            "YOLCULUĞA BAŞLA",
                            style: TextStyle(
                              fontSize: 26,
                              fontFamily: "Oswald",
                              fontWeight: FontWeight.w400,
                              color: Theme.of(context).colorScheme.background,
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
          //İstatistikler
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Column(
              children: [
                const Text(
                  "İSTATİSTİKLERİN",
                  style: TextStyle(
                    fontSize: 26,
                    fontFamily: "Oswald",
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 254, 207, 0),
                  ),
                ),
                Row(
                  children: [
                    //Yapılan yolculuk
                    Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: Container(
                        height: 187,
                        width: 120,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 254, 207, 0),
                          borderRadius: BorderRadiusDirectional.vertical(
                            top: Radius.circular(70),
                            bottom: Radius.circular(70),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Column(
                            children: [
                              Text(
                                yolculuk.toString(),
                                style: const TextStyle(
                                  fontSize: 26,
                                  fontFamily: "Oswald",
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 221, 75, 26),
                                ),
                              ),
                              Text(
                                "YOLCUL\n    UK",
                                style: TextStyle(
                                  fontSize: 26,
                                  fontFamily: "Oswald",
                                  fontWeight: FontWeight.w400,
                                  color:
                                      Theme.of(context).colorScheme.background,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //Gidilen yol (KM)
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        height: 187,
                        width: 120,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 254, 207, 0),
                          borderRadius: BorderRadiusDirectional.vertical(
                            top: Radius.circular(70),
                            bottom: Radius.circular(70),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Column(
                            children: [
                              Text(
                                "${yol.toString()}\nKM",
                                style: const TextStyle(
                                  fontSize: 26,
                                  fontFamily: "Oswald",
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 221, 75, 26),
                                ),
                              ),
                              Text(
                                "YOL",
                                style: TextStyle(
                                  fontSize: 26,
                                  fontFamily: "Oswald",
                                  fontWeight: FontWeight.w400,
                                  color:
                                      Theme.of(context).colorScheme.background,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //Harcanan yakıt(L)
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        height: 187,
                        width: 120,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 254, 207, 0),
                          borderRadius: BorderRadiusDirectional.vertical(
                            top: Radius.circular(70),
                            bottom: Radius.circular(70),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Column(
                            children: [
                              Text(
                                "${yakit.toString()}\n L",
                                style: const TextStyle(
                                  fontSize: 26,
                                  fontFamily: "Oswald",
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 221, 75, 26),
                                ),
                              ),
                              Text(
                                "YAKIT",
                                style: TextStyle(
                                  fontSize: 26,
                                  fontFamily: "Oswald",
                                  fontWeight: FontWeight.w400,
                                  color:
                                      Theme.of(context).colorScheme.background,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 25),
          //   child: Container(
          //     color: Colors.black,
          //     child: const SizedBox(
          //       height: 211,
          //       width: 393,
          //       child: Center(
          //         child: Text(
          //           "Buraya İstatistikler kısmı gelecek",
          //           style: TextStyle(
          //             color: Colors.white,
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
