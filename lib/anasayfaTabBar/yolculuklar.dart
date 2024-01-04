import 'package:araba_sevdasi/anasayfaTabBar/yolculuklar_liste.dart';
import 'package:flutter/material.dart';

class Yolculuklar extends StatelessWidget {
  Yolculuklar({super.key});
  var liste = YolculuklarListe.yolculuklarListe;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: ListView.builder(
          itemCount: liste.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                liste[index],
                style: const TextStyle(
                  fontSize: 18,
                  fontFamily: "Oswald",
                  fontWeight: FontWeight.w400,
                ),
              ),
              trailing: TextButton(
                child: const Icon(Icons.directions_boat_filled_outlined),
                onPressed: () {},
              ),
              onTap: () {},
            );
          },
        ),
      ),
    );
  }
}
