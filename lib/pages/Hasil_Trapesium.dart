import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:math';

class HasilTrapesium extends StatelessWidget {
  final double alasTrapesium;
  final double tinggiTrapesium;
  final double sisiAtasTrapesium;
  final double sisiMiring1Trapesium;
  final double sisiMiring2Trapesium;

  HasilTrapesium({
    Key? key,
    required this.alasTrapesium,
    required this.tinggiTrapesium,
    required this.sisiAtasTrapesium,
    required this.sisiMiring1Trapesium,
    required this.sisiMiring2Trapesium,
  }) : super(key: key);

  double hasil = 0;
  double kel = 0;

  @override
  Widget build(BuildContext context) {
    double hasil = ((alasTrapesium + sisiAtasTrapesium) * tinggiTrapesium);
    double kel = (alasTrapesium +
        sisiAtasTrapesium +
        sisiMiring1Trapesium +
        sisiMiring2Trapesium);
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
                  Text('Luas Trapesium adalah:'),
                  Text('$hasil'),
                  Text("Keliling Trapesium adalah:",style: TextStyle(),),
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
