import 'dart:convert';
import 'package:araba_sevdasi/kayitliArabalar/kayitli_arabalar.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:http/http.dart' as http;

// ignore: non_constant_identifier_names
IconData directions_car = const IconData(0xe1d7, fontFamily: 'MaterialIcons');

class Araba extends StatefulWidget {
  @override
  State<Araba> createState() => ArabaState();
  const Araba({super.key});
}

List<Map<String, dynamic>> kayitliArabaListesi = [];
List<Map<String, dynamic>> arabaListesi = [];
List<String> markaListesi = [];
List<String> modelListesi = [];
List<String> yilListesi = [];
String? dropDownValue1;
String? dropDownValue2;
String? selectedMarka;
String? selectedModel;

class ArabaState extends State<Araba> {
  Future<void> _veriGetir() async {
    try {
      final response = await http.get(Uri.parse(
          'https://raw.githubusercontent.com/nazhhoglu/cars/main/cars.json'));

      if (response.statusCode == 200) {
        print('Alınan JSON Yanıtı: ${response.body}');
        // JSON verisini çözümle
        arabaListesi = List<Map<String, dynamic>>.from(
          json.decode(response.body),
        );

        // Marka, model ve yıl listelerini oluştur
        for (var araba in arabaListesi) {
          var marka = araba['marka'];
          var model = araba['model'];
          var yil = araba['uretimYil'].toString();

          if (!markaListesi.contains(marka)) {
            markaListesi.add(marka);
          }

          if (!modelListesi.contains(model)) {
            modelListesi.add(model);
          }

          if (!yilListesi.contains(yil)) {
            yilListesi.add(yil);
          }
        }

        // State güncelleme işlemi
        setState(() {});
      } else {
        throw Exception(
            'HTTP request failed with status: ${response.statusCode}');
      }
    } catch (e, stackTrace) {
      print('Hata oluştu: $e');
      print('Stack trace: $stackTrace');
    }
  }

  void git(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => kayitliArabalar()),
    );
  }

  bool durum1 = false; //marka seçildi
  bool durum2 = false; //model seçildi
  bool durum3 = false; //yıl seçildi

  List<String> filteredModelListesi() {
    return arabaListesi
        .where((araba) => araba['marka'] == selectedMarka)
        .map((araba) => araba['model'] as String)
        .toSet()
        .toList();
  }

  List<String> filteredYilListesi() {
    return arabaListesi
        .where((araba) => araba['model'] == selectedModel)
        .map((araba) => araba['uretimYil'].toString())
        .toSet()
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var marka = TextEditingController();
    _veriGetir();

    return Scaffold(
      body: Column(
        children: [
          // Araba fotoğrafı
          CustomPaint(
            painter: SmoothWavesPainter(),
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(left: 96),
                child: Image.asset("assets/images/araba/araba.png"),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 431,
                    width: 500,
                    child: Column(
                      children: [
                        // Araba Ekle
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 36, left: 36),
                              child: Text(
                                "Araba Ekle",
                                style: TextStyle(
                                  fontFamily: "Oswald",
                                  fontSize: 24,
                                ),
                              ),
                            ),

                            //Arabalarim
                            Padding(
                              padding: const EdgeInsets.only(top: 36, left: 64),
                              child: SizedBox(
                                width: 180,
                                height: 48,
                                child: TextButton(
                                  onPressed: () => git(context),
                                  child: const Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 16),
                                        child: Text(
                                          "Kayıtlı Arabalarım",
                                          style: TextStyle(
                                            fontFamily: "Oswald",
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: 4, left: 4),
                                        child: Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          size: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        //Araba marka
                        Padding(
                          padding: const EdgeInsets.only(top: 4, bottom: 16),
                          child: SizedBox(
                              width: 320,
                              height: 60,
                              child: Autocomplete<String>(
                                optionsBuilder: (textEditingValue) {
                                  final searchTextLowerCase =
                                      textEditingValue.text.toLowerCase();

                                  return markaListesi
                                      .where(
                                        (entry) => entry
                                            .toLowerCase()
                                            .contains(searchTextLowerCase),
                                      )
                                      .toList();
                                },
                                onSelected: (String? value) {
                                  setState(() {
                                    selectedMarka = value;
                                    selectedModel = null;
                                    durum1 = true;
                                    durum2 = false;
                                  });
                                },
                              )

                              /*TextField(
                              controller: marka
                              decoration: const InputDecoration(
                                labelText: "Araba markası",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(4),
                                    right: Radius.circular(4),
                                  ),
                                ),
                              ),
                            ),*/
                              ),
                        ),

                        Row(
                          children: [
                            Column(
                              children: [
                                //Araba model
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 36, bottom: 16),
                                  child: DropdownMenu(
                                    menuHeight: 200,
                                    width: 320,
                                    label: const Text("Araba Modeli"),
                                    onSelected: (String? value) {
                                      setState(() {
                                        dropDownValue1 = value!;
                                        selectedModel = value;
                                        durum2 = true;
                                      });
                                    },
                                    dropdownMenuEntries: filteredModelListesi()
                                        .map<DropdownMenuEntry<String>>(
                                            (String value) {
                                      return DropdownMenuEntry<String>(
                                        value: value,
                                        label: value,
                                        enabled: durum1,
                                      );
                                    }).toList(),
                                  ),
                                ),

                                //Araba Yıl
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 36, bottom: 16),
                                  child: DropdownMenu(
                                    menuHeight: 200,
                                    width: 320,
                                    label: const Text("Üretim Yılı"),
                                    onSelected: (String? value) {
                                      setState(() {
                                        dropDownValue2 = value!;
                                        durum3 = true;
                                      });
                                    },
                                    dropdownMenuEntries: filteredYilListesi()
                                        .map<DropdownMenuEntry<String>>(
                                            (String value) {
                                      return DropdownMenuEntry<String>(
                                        value: value,
                                        label: value,
                                        enabled: durum2,
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        //Ekle tuşu (yuvarlak içine "+")
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: SizedBox(
                            width: 70,
                            height: 70,
                            child: FloatingActionButton(
                              backgroundColor:
                                  const Color.fromARGB(255, 46, 154, 255),
                              shape: const CircleBorder(),
                              onPressed: () {
                                if (!(durum1 & durum2 & durum3)) {
                                  showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      title: const Text(
                                        "Hata!",
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontFamily: "Oswald",
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      content: const Text(
                                        "Marka, model ve üretim yılını seçiniz!",
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontFamily: "Oswald",
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          child: const Text(
                                            "Tamam",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontFamily: "Oswald",
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                } else {
                                  Map<String, dynamic> yeniArac = {
                                    'marka': selectedMarka,
                                    'model': selectedModel,
                                    'uretimYil': int.parse(dropDownValue2!)
                                  };

                                  bool aracListesindeVarMi(
                                      Map<String, dynamic> yeniArac) {
                                    for (var arac in kayitliArabaListesi) {
                                      if (arac['marka'] == yeniArac['marka'] &&
                                          arac['model'] == yeniArac['model'] &&
                                          arac['uretimYil'] ==
                                              yeniArac['uretimYil']) {
                                        return true;
                                      }
                                    }
                                    return false;
                                  }

                                  if (!aracListesindeVarMi(yeniArac)) {
                                    setState(() {
                                      kayitliArabaListesi.add(yeniArac);
                                    });
                                  } else {
                                    showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        title: const Text(
                                          "Hata!",
                                          style: TextStyle(
                                            fontSize: 30,
                                            fontFamily: "Oswald",
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        content: const Text(
                                          "Bu araba zaten kayıtlı!",
                                          style: TextStyle(
                                            fontSize: 22,
                                            fontFamily: "Oswald",
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        actions: [
                                          TextButton(
                                            onPressed: () =>
                                                Navigator.pop(context),
                                            child: const Text(
                                              "Tamam",
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontFamily: "Oswald",
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                }
                              },
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 32,
                              ),
                            ),
                          ),
                        )
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