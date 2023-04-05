import 'package:flutter/material.dart';

import 'Hasil_Trapesium.dart';

class Trapesium extends StatelessWidget {
  const Trapesium({super.key});

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
  double alas = 0;
  double sisiAtas = 0;
  double tinggi = 0;
  double miring1 = 0;
  double miring2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bangun Datar'),
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
                            alas = double.parse(txt);
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
                            hintText: 'alas'),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            sisiAtas = double.parse(txt);
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
                            hintText: 'sisi atas'),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            miring1 = double.parse(txt);
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
                            hintText: 'Sisi Miring1'),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            miring2 = double.parse(txt);
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
                            hintText: 'Sisi Miring2'),
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
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 20.0)),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      var route = MaterialPageRoute(
                        builder: (context) => HasilTrapesium(
                          alasTrapesium: alas,
                          tinggiTrapesium: tinggi,
                          sisiAtasTrapesium: sisiAtas,
                          sisiMiring1Trapesium: miring1,
                          sisiMiring2Trapesium: miring2,
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
