import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GirisEkrani extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final Function(BuildContext) basla;
  GirisEkrani({required this.basla});
  @override
  Widget build(BuildContext context) {
    return Container(
      //Arkaplan
      height: 759,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 51, 95, 255),
            Color.fromARGB(255, 190, 207, 254)
          ],
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 270,
            width: 350,
            child: Image.asset(
              "assets/images/giris/siyah_araba.png",
              color: Colors.white,
            ),
          ),
          Container(
            height: 50,
            width: 270,
            margin:
                const EdgeInsets.only(top: 0, left: 40, right: 40, bottom: 0),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              border: Border.all(color: Colors.black, width: 1.0), //dış hat
              borderRadius: const BorderRadius.all(Radius.elliptical(45, 45)),
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 2, left: 20, right: 0, bottom: 0),
              child: Text(
                "HAPPY FUEL",
                style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 40,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 30, left: 0, right: 0, bottom: 0),
                child: Row(
                  children: [
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.red),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        onPressed: () => basla(context),
                        child: const Text(
                          "Hadi Başlayalım!",
                          style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontSize: 36,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: 300,
              child: Image.asset(
                "assets/images/giris/rotali_araba.png",
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
