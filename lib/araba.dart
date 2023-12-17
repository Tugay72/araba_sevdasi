import 'package:araba_sevdasi/kayitliArabalar/kayitli_arabalar.dart';
import 'package:flutter/material.dart';
import 'dart:math';

List<String> list = <String>['One', 'Two', 'Three', 'Four'];
IconData directions_car = const IconData(0xe1d7, fontFamily: 'MaterialIcons');

class Araba extends StatefulWidget {
  @override
  State<Araba> createState() => ArabaState();
  Araba();
}

var dropDownValue1 = list.first;
var dropDownValue2 = list.first;

class ArabaState extends State<Araba> {
  void git(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => kayitliArabalar()),
    );
  }

  bool durum1 = true;
  bool durum2 = false;

  Widget build(BuildContext context) {
    var marka = TextEditingController();

    return Scaffold(
      body: Column(
        children: [
          // Araba fotoğrafı
          CustomPaint(
            painter: SmoothWavesPainter(),
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(left: 96),
                child: Image.asset("assets/images/araba.png"),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Container(
                    height: 431,
                    width: 500,
                    child: Column(
                      children: [
                        //Araba marka
                        Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 16),
                          child: SizedBox(
                            width: 350,
                            child: TextField(
                              controller: marka,
                              decoration: const InputDecoration(
                                hintText: "Araba markasını seçiniz",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(20),
                                    right: Radius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //Araba model
                        Padding(
                          padding: const EdgeInsets.only(left: 32, bottom: 16),
                          child: Row(
                            children: [
                              const Text(
                                "Araba Modeli  :",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontFamily: "Oswald",
                                ),
                              ),
                              const SizedBox(
                                width: 33,
                              ),
                              DropdownMenu(
                                initialSelection: "Model seçiniz",
                                onSelected: (String? value) {
                                  setState(() {
                                    dropDownValue1 = value!;
                                    durum2 = true;
                                  });
                                },
                                dropdownMenuEntries: list
                                    .map<DropdownMenuEntry<String>>(
                                        (String value) {
                                  return DropdownMenuEntry<String>(
                                    value: value,
                                    label: value,
                                    enabled: durum1,
                                  );
                                }).toList(),
                              )
                            ],
                          ),
                        ),

                        //Araba Yıl
                        Padding(
                          padding: const EdgeInsets.only(left: 32, bottom: 16),
                          child: Row(
                            children: [
                              const Text(
                                "Üretim Yılı      :",
                                style: TextStyle(
                                  fontFamily: "Oswald",
                                  fontSize: 24,
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              DropdownMenu(
                                initialSelection: "",
                                onSelected: (String? value) {
                                  setState(() {
                                    dropDownValue2 = value!;
                                  });
                                },
                                dropdownMenuEntries: list
                                    .map<DropdownMenuEntry<String>>(
                                        (String value) {
                                  return DropdownMenuEntry<String>(
                                    value: value,
                                    label: value,
                                    enabled: durum2,
                                  );
                                }).toList(),
                              )
                            ],
                          ),
                        ),

                        //Ekle tuşu (yuvarlak içine "+")
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  const Padding(
                                    padding:
                                        EdgeInsets.only(top: 10, bottom: 10),
                                    child: Text(
                                      "ARABA EKLE",
                                      style: TextStyle(
                                        fontFamily: "Oswald",
                                        fontSize: 30,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 80,
                                    height: 80,
                                    child: FloatingActionButton(
                                      backgroundColor: const Color.fromARGB(
                                          255, 46, 154, 255),
                                      shape: const CircleBorder(),
                                      onPressed: () {},
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 35,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  const Padding(
                                    padding:
                                        EdgeInsets.only(top: 10, bottom: 10),
                                    child: Text(
                                      "ARABALARIM",
                                      style: TextStyle(
                                        fontFamily: "Oswald",
                                        fontSize: 30,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 80,
                                    height: 80,
                                    child: FloatingActionButton(
                                      backgroundColor: const Color.fromARGB(
                                          255, 46, 154, 255),
                                      shape: const CircleBorder(),
                                      onPressed: () => git(context),
                                      child: const Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        size: 35,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
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

// Mavi arkaplan
class SmoothWavesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color.fromARGB(255, 60, 46, 255),
          Color.fromARGB(255, 46, 154, 255)
        ],
        stops: [0.0, 0.7],
      ).createShader(Rect.fromLTRB(0, 0, size.width, size.height))
      ..strokeWidth = 320.0
      ..style = PaintingStyle.stroke;

    Path path = Path();

    double waveFrequency = 2.0 * pi / size.width / -2;
    double waveAmplitude = 24.0;

    for (double x = 0; x <= size.width; x += 1) {
      double y = sin(x * waveFrequency) * waveAmplitude + size.height / 4;
      path.lineTo(x, y);
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

// decoration: const BoxDecoration(
//                 gradient: LinearGradient(
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                   colors: [
//                     Color.fromARGB(255, 96, 170, 255),
//                     Color.fromARGB(255, 151, 217, 255)
//                   ],