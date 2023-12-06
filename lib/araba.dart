import 'package:flutter/material.dart';

List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class Araba extends StatelessWidget {
  Araba();

  Widget build(BuildContext context) {
    var marka = TextEditingController();
    var dropDownValue = list.first;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 270,
              width: 500,
              color: Colors.blue,
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
                    color: Colors.white,
                    child: Column(
                      children: [
                        //Araba marka
                        Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 20),
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
                          padding: const EdgeInsets.only(left: 30, bottom: 20),
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
                                width: 50,
                              ),
                              DropdownButton(
                                value: dropDownValue,
                                items: list.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                borderRadius: BorderRadius.circular(20),
                                underline: Container(
                                  height: 2,
                                  color: Colors.orange,
                                ),
                                onChanged: (value) => (),
                              ),
                            ],
                          ),
                        ),
                        //Araba Yıl
                        Padding(
                          padding: const EdgeInsets.only(left: 30, bottom: 20),
                          child: Row(
                            children: [
                              const Text(
                                "Araba Yılı        :",
                                style: TextStyle(
                                  fontFamily: "Oswald",
                                  fontSize: 24,
                                ),
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              DropdownButton(
                                value: dropDownValue,
                                items: list.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                borderRadius: BorderRadius.circular(20),
                                underline: Container(
                                  height: 2,
                                  color: Colors.orange,
                                ),
                                onChanged: (value) => (),
                              ),
                            ],
                          ),
                        ),
                        //Ekle tuşu (yuvarlak içine "+")
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                          ),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(bottom: 10),
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
                                  backgroundColor:
                                      Color.fromARGB(255, 255, 151, 96),
                                  shape: const CircleBorder(),
                                  onPressed: () {},
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
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
