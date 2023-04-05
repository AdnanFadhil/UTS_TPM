import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:math';

class HasilTabung extends StatelessWidget {
  final double jari_jariTabung;
  final double tinggiTabung;

  HasilTabung({
    Key? key,
    required this.jari_jariTabung,
    required this.tinggiTabung,
  }) : super(key: key);

  double hasil = 0;
  double kel = 0;

  @override
  Widget build(BuildContext context) {
    double hasil = (pi * jari_jariTabung * jari_jariTabung * tinggiTabung);
    double kel = (pi * 2 * jari_jariTabung * (jari_jariTabung + tinggiTabung));
    return Scaffold(
      appBar: AppBar(
        title: Text("Hasil Trapesium"),
      ),
      body: Container(
        color: Colors.amber[100],
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
              child: Container(),
            ),
            Center(
              child: Column(
                children: [
                  Text('Volume Tabung adalah:'),
                  Text('$hasil'),
                  Text("Luas Permukaan Tabung adalah:"),
                  Text("$kel"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
