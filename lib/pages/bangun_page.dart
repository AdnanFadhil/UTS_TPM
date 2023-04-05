import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'trapesium.dart';
import 'tabung.dart';

class Bangun extends StatelessWidget {
  Bangun({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bangun Datar'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Trapesium()));
              },
              title: Text("Trapesium"),
              leading: CircleAvatar(
                  backgroundImage: AssetImage("lib/images/shapes.png")),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Tabung()));
              },
              title: Text("Tabung"),
              leading: CircleAvatar(
                  backgroundImage: AssetImage("lib/images/clock.png")),
            ),
          ],
        ));
  }
}
