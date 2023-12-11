import 'package:araba_sevdasi/profilListe/profil_dondur.dart';
import 'package:araba_sevdasi/profilListe/profil_liste.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

int lastToggleIndex = 1;

// ignore: must_be_immutable
class Profil extends StatelessWidget {
  Profil({super.key, this.indexDegistir});
  // ignore: prefer_typing_uninitialized_variables
  var indexDegistir;
  var liste = ProfilListe.profilListe;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              height: 230,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 252, 82, 255),
                    Color.fromARGB(255, 250, 204, 19),
                  ],
                ),
              ),
              child: Center(
                child: SizedBox(
                  height: 170,
                  width: 170,
                  child: Image.asset("assets/images/emirhoca.png"),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: ProfilDondur(liste),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 22, top: 20),
                  child: themeButton(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget themeButton() {
    return Row(
      children: [
        const Text(
          "Tema:",
          style: TextStyle(
            fontSize: 20,
            fontFamily: "Oswald",
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(width: 180),
        Padding(
          padding: const EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 0),
          child: ToggleSwitch(
            minWidth: 60.0,
            minHeight: 40.0,
            initialLabelIndex: lastToggleIndex,
            cornerRadius: 30.0,
            activeFgColor: const Color.fromARGB(255, 255, 249, 249),
            inactiveBgColor: const Color.fromARGB(255, 48, 48, 48),
            inactiveFgColor: const Color.fromARGB(255, 218, 218, 218),
            totalSwitches: 2,
            icons: const [
              Icons.nightlight,
              Icons.sunny,
            ],
            iconSize: 30.0,
            activeBgColors: const [
              [
                Color.fromARGB(255, 51, 203, 255),
                Color.fromARGB(255, 13, 176, 231)
              ],
              [
                Color.fromARGB(255, 252, 255, 59),
                Color.fromARGB(255, 255, 169, 40)
              ],
            ],
            animate: true,
            curve: Curves.fastLinearToSlowEaseIn,
            onToggle: (index) {
              if (lastToggleIndex != index) {
                lastToggleIndex = index!;
              }
              indexDegistir(index);
            },
          ),
        ),
      ],
    );
  }
}


/*
 Widget texts(String mainText, String description) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          Text(mainText,
              style: const TextStyle(
                  color: Color.fromARGB(255, 48, 48, 48),
                  fontSize: 20,
                  //fontFamily: "Oswald",
                  fontWeight: FontWeight.w400)),
          Text(description,
              style: const TextStyle(
                  color: Color.fromARGB(255, 48, 48, 48),
                  fontSize: 14,
                  // fontFamily: "Oswald",
                  fontWeight: FontWeight.w300))
        ],
      ),
    );
  }
  */