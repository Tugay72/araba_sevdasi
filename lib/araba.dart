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

String? dropDownValue1;
String? dropDownValue2;

class ArabaState extends State<Araba> {
  void git(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => kayitliArabalar()),
    );
  }

  bool durum1 = true; //marka seçildi
  bool durum2 = false; //model seçildi
  bool durum3 = false; //yıl seçildi

  @override
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

                        //Arabalarim
                          Padding(
                            padding: const EdgeInsets.only(left: 154),
                            child:
                            SizedBox(
                              width: 212,
                              height: 48,
                              child: FloatingActionButton(
                                backgroundColor: const Color.fromARGB(
                                    255, 46, 154, 255),
                                
                                onPressed: () => git(context),
                                child: const Row(
                                  children: [
                                    Padding(padding: EdgeInsets.only(left: 16),
                                    child:
                                      Text(
                                      "Kayıtlı Arabalarım",
                                      style: TextStyle(
                                        fontFamily: "Oswald",
                                        fontSize: 24,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 4, left: 8),
                                    child:
                                      Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          size: 24,
                                          color: Colors.white,
                                      ),
                                    )
                                  ]
                                )
                              ),
                            ),
                        ),
                        CustomPaint(
                          painter: LinePainter(),
                          child: Container(
                            width: 300.0,
                            height: 1.0,
                          ),
                        ),
                        // Araba Ekle
                        const Padding(
                          padding:
                            EdgeInsets.only(top: 48, right: 240, bottom: 16),
                            child: Text(
                              "Araba Ekle",
                              style: TextStyle(
                                fontFamily: "Oswald",
                                fontSize: 24,
                              ),
                            ),
                          ),
                          
                        //Araba marka
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: SizedBox(
                            width: 360,
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
                        Row(
                          children: [
                            Column(
                              children: [

                                //Araba model
                                Padding(
                                  padding: const EdgeInsets.only(left: 16, bottom: 16),
                                  child: 
                                  DropdownMenu(
                                    width: 196,
                                    initialSelection: "Model seçiniz",
                                    label: const Text("Araba Modeli"),
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
                                ),

                                //Araba Yıl
                                Padding(
                                  padding: const EdgeInsets.only(left: 16, bottom: 16),
                                  child: 
                                  DropdownMenu(
                                    width: 196,
                                    initialSelection: "",
                                    label: const Text("Üretim Yılı"),
                                    onSelected: (String? value) {
                                      setState(() {
                                        dropDownValue2 = value!;
                                        durum3 = true;
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
                                ),
                              ],
                            ),
                            
                            //Ekle tuşu (yuvarlak içine "+")
                            Padding(padding: const EdgeInsets.only(bottom: 32, left: 64),
                              child: 
                              SizedBox(
                                width: 64,
                                height: 64,
                                child: FloatingActionButton(
                                  backgroundColor: const Color.fromARGB(
                                      255, 46, 154, 255),
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
                                                  fontWeight:
                                                      FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    } else {
                                      //ekle
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

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const Color.fromARGB(255, 236, 236, 236) // Line color
      ..strokeCap = StrokeCap.square // Round line endings
      ..strokeWidth = 1.0; // Line width

    Offset startPoint = const Offset(-28.0, 16.0); // Starting point of the line
    Offset endPoint = const Offset(330.0, 16.0); // Ending point of the line

    canvas.drawLine(startPoint, endPoint, paint);
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