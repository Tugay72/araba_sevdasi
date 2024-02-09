import 'package:araba_sevdasi/pages/anasayfa/map_screen.dart';
import 'package:flutter/material.dart';

class Sayfa extends StatefulWidget {
  @override
  State<Sayfa> createState() => SayfaState();
  Sayfa({super.key});
}

class SayfaState extends State<Sayfa> {
  void git(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MapScreen()),
    );
  }

  var yolculuk = 5;
  var yol = 100;
  var yakit = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child : 
      Container(
        padding: const EdgeInsets.all(16),
        child:  
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            const Text(
                  "Hi Emir!",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 26,
                    fontFamily: "Oswald",
                    fontWeight: FontWeight.w800,
                    color: Color.fromARGB(255, 43, 43, 43),
                  ),
                ),
            const Text(
                  "Welcome Back,",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Oswald",
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 110, 110, 110),
                  ),
                ),


          //Map Photo
           const SizedBox(
            width: 640,
            height: 480,
            child: Center(
              child: Image(
                image: AssetImage("assets/images/anasayfa/map2.png"),
              ),
            ),
          ),
          
          //Start Button
          
          Padding(
            padding: const EdgeInsets.only(left: 64),
            child: SizedBox(
              width: 240,
              child: TextButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 46, 154, 255),
                  ),
                ),
                child: const Text(
                  "Start!",
                  style: TextStyle(
                    fontSize: 26,
                    fontFamily: "Oswald",
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                onPressed: () => git(context),
              ),
            ),
          ),


          //İstatistikler
          /*Column(
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
                        color: Color.fromARGB(255, 46, 154, 255),
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
                        color: Color.fromARGB(255, 46, 154, 255),
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
                        color: Color.fromARGB(255, 46, 154, 255),
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
          ), */
        ],
      ),
      )
      )
    );
  }
}
