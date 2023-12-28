import 'package:araba_sevdasi/anasayfaTabBar/sayfa.dart';
import 'package:araba_sevdasi/anasayfaTabBar/yolculuklar.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  @override
  State<Anasayfa> createState() => AnasayfaState();
  Anasayfa({super.key});
}

// ignore: must_be_immutable
class AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Theme.of(context).colorScheme.background,
          backgroundColor: const Color.fromARGB(255, 254, 207, 0),
          title: TabBar(
            //physics: const NeverScrollableScrollPhysics(),
            indicatorColor: Theme.of(context).colorScheme.background,
            dividerColor: const Color.fromARGB(255, 254, 207, 0),
            tabs: [
              Tab(
                //Anasayfa
                icon: Icon(
                  Icons.home_rounded,
                  color: Theme.of(context).colorScheme.background,
                ),
              ),
              Tab(
                //Yolculuklar kısmı
                icon: Icon(
                  Icons.add_road_rounded,
                  color: Theme.of(context).colorScheme.background,
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Sayfa(),
            Yolculuklar(),
          ],
        ),
      ),
    );
  }
}
