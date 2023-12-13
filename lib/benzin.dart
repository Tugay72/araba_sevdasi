import 'package:flutter/material.dart';

class Benzin extends StatelessWidget {
  Benzin({super.key});
  @override
  Widget build(BuildContext context) {
    double shellBenzin = 2.27;
    double shellMotorin = 2.13;
    double shellLpg = 0.97;

    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Card(
            //SHELL Card
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: Image.asset("assets/images/ShellLogo.png"),
                  title: const Text(
                    "SHELL",
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Oswald",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subtitle: Text(
                    "Benzin: $shellBenzin\nMotorin: $shellMotorin\nLpg: $shellLpg",
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
                  title: const Text(
                    "Petrol Ofisi",
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Oswald",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subtitle: Text(
                    "Benzin: $shellBenzin\nMotorin: $shellMotorin\nLpg: $shellLpg",
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
                  title: const Text(
                    "Opet",
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Oswald",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subtitle: Text(
                    "Benzin: $shellBenzin\nMotorin: $shellMotorin\nLpg: $shellLpg",
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
                  title: const Text(
                    "BP",
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Oswald",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subtitle: Text(
                    "Benzin: $shellBenzin\nMotorin: $shellMotorin\nLpg: $shellLpg",
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
                  title: const Text(
                    "BP",
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Oswald",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subtitle: Text(
                    "Benzin: $shellBenzin\nMotorin: $shellMotorin\nLpg: $shellLpg",
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
