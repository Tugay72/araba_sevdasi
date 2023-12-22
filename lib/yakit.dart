import 'package:araba_sevdasi/YakitVeri/yakit_class.dart';
import 'package:araba_sevdasi/YakitVeri/yakit_liste.dart';
import 'package:flutter/material.dart';

class Yakit extends StatelessWidget {
  Yakit({super.key});
  @override
  Widget build(BuildContext context) {
    List<yakitClass> liste = YakitListe.yakitListe;

    return Padding(
      padding: EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Card(
            //SHELL Card
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: Image.asset("assets/images/ShellLogo.png"),
                  title: Text(
                    liste[0].marka,
                    style: const TextStyle(
                      fontSize: 24,
                      fontFamily: "Oswald",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subtitle: Text(
                    "Benzin: ${liste[0].benzin}\nMotorin: ${liste[0].motorin}\nLpg: ${liste[0].lpg}",
                    style: const TextStyle(
                      fontSize: 16,
                      fontFamily: "Oswald",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Card(
            //Petrol Ofisi Card
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 23, right: 19),
                    child: Image.asset("assets/images/PetrolOfisiLogo.png"),
                  ),
                  title: Text(
                    liste[1].marka,
                    style: const TextStyle(
                      fontSize: 24,
                      fontFamily: "Oswald",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subtitle: Text(
                    "Benzin: ${liste[1].benzin}\nMotorin: ${liste[1].motorin}\nLpg: ${liste[1].lpg}",
                    style: const TextStyle(
                      fontSize: 16,
                      fontFamily: "Oswald",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Card(
            //Opet Card
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: Container(
                    width: 98,
                    child: Image.asset("assets/images/OpetLogo.png"),
                  ),
                  title: Text(
                    liste[2].marka,
                    style: const TextStyle(
                      fontSize: 24,
                      fontFamily: "Oswald",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subtitle: Text(
                    "Benzin: ${liste[2].benzin}\nMotorin: ${liste[2].motorin}\nLpg: ${liste[2].lpg}",
                    style: const TextStyle(
                      fontSize: 16,
                      fontFamily: "Oswald",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Card(
            //BP Card
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: SizedBox(
                    width: 97,
                    child: Image.asset("assets/images/BPLogo.png"),
                  ),
                  title: Text(
                    liste[3].marka,
                    style: const TextStyle(
                      fontSize: 24,
                      fontFamily: "Oswald",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subtitle: Text(
                    "Benzin: ${liste[3].benzin}\nMotorin: ${liste[3].motorin}\nLpg: ${liste[3].lpg}",
                    style: const TextStyle(
                      fontSize: 16,
                      fontFamily: "Oswald",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Card(
            //Aygaz Card
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: SizedBox(
                    width: 97,
                    child: Image.asset("assets/images/AygazLogo.png"),
                  ),
                  title: Text(
                    liste[4].marka,
                    style: const TextStyle(
                      fontSize: 24,
                      fontFamily: "Oswald",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subtitle: Text(
                    "Benzin: ${liste[4].benzin}\nMotorin: ${liste[4].motorin}\nLpg: ${liste[4].lpg}",
                    style: const TextStyle(
                      fontSize: 16,
                      fontFamily: "Oswald",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
