// ignore: file_names
import 'package:araba_sevdasi/pages/anasayfa/anasayfa.dart';
import 'package:flutter/material.dart';
import 'package:araba_sevdasi/pages/araba.dart';
import 'package:araba_sevdasi/pages/yakit.dart';
import 'package:araba_sevdasi/pages/profil.dart';

class AnaMenu extends StatefulWidget {
  const AnaMenu({super.key});

  @override
  State<AnaMenu> createState() => AnaMenuState();
}

class AnaMenuState extends State<AnaMenu> {
  var suAnkiIndex = 0;

  List<Widget> pageListFunc() => [
        const Anasayfa(),
        const Yakit(),
        Araba(),
        Profil(
          indexDegistir: temaDegistir,
        )
      ];

  var temaMod = Brightness.light;
  temaDegistir(int index) {
    setState(() {
      if (index == 1) {
        temaMod = Brightness.light;
      } else {
        temaMod = Brightness.dark;
      }
    });
  }

  void sayfaDegistir(index) {
    setState(() {
      suAnkiIndex = index;
    });
  }

  // ignore: non_constant_identifier_names
  IconData directions_car = const IconData(0xe1d7, fontFamily: 'MaterialIcons');
  @override
  Widget build(BuildContext context) {
    var sayfalar = pageListFunc();
    return MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.green.shade300,
        body: sayfalar[suAnkiIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              backgroundColor:  Color.fromARGB(255, 46, 154, 255),
              icon: Icon(Icons.home_rounded),
              label: "Home",
            ),
            BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 212, 0, 194),
              icon: Icon(Icons.local_gas_station_rounded),
              label: "Fuel",
            ),
            BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 46, 154, 255),
              icon: Icon(Icons.directions_car),
              label: "Cars",
            ),
            BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 236, 43, 43),
              icon: Icon(Icons.account_circle),
              label: "Profile",
            ),
          ],
          currentIndex: suAnkiIndex,
          onTap: sayfaDegistir,
        ),
      ),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: temaMod,
        ),
      ),
    );
  }
}
