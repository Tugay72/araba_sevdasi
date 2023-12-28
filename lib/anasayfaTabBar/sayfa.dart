import 'package:araba_sevdasi/anasayfaTabBar/suruseBasla.dart';
import 'package:flutter/material.dart';

class Sayfa extends StatelessWidget {
  const Sayfa({super.key});

  void git(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SuruseBasla()),
    );
  }

  @override
  Widget build(BuildContext context) {
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
            padding: const EdgeInsets.only(top: 25),
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
                    //İstatistikler
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Container(
              color: Colors.black,
              child: const SizedBox(
                height: 211,
                width: 393,
                child: Center(
                  child: Text(
                    "Buraya İstatistikler kısmı gelecek",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
