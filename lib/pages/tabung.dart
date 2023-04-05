import 'package:flutter/material.dart';

import 'Hasil_Tabung.dart';

class Tabung extends StatelessWidget {
  const Tabung({super.key});

  @override
  Widget build(BuildContext context) {
    return Hitung_Trapesium();
  }
}

class Hitung_Trapesium extends StatefulWidget {
  @override
  State<Hitung_Trapesium> createState() => _Hitung_TrapesiumState();
}

class _Hitung_TrapesiumState extends State<Hitung_Trapesium> {
  double jari = 0;
  double tinggi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabung'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 20.0)),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            jari = double.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 5,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16.0),
                        decoration: InputDecoration(
                            labelText: "cm",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            hintText: 'jari-jari'),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            tinggi = double.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 5,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16.0),
                        decoration: InputDecoration(
                            labelText: "cm",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            hintText: 'tinggi'),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 20.0)),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      var route = MaterialPageRoute(
                        builder: (context) => HasilTabung(
                          jari_jariTabung: jari,
                          tinggiTabung: tinggi,
                        ),
                      );
                      Navigator.of(context).push(route);
                    },
                    child: Text(
                      "Hitung",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
