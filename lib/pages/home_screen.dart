import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uts_tpm/pages/Kalender.dart';
import 'package:uts_tpm/pages/bangun_page.dart';
import 'package:uts_tpm/pages/profile.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final user = FirebaseAuth.instance.currentUser!;

  void SignUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Menu Utama'),
          actions: [
            IconButton(onPressed: SignUserOut, icon: Icon(Icons.logout))
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Bangun()),
                );
              },
              title: Text("Bangun Datar"),
              leading: CircleAvatar(
                  backgroundImage: AssetImage("lib/images/shapes.png")),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Kalender()),
                );
              },
              title: Text("Kalender"),
              leading: CircleAvatar(
                  backgroundImage: AssetImage("lib/images/clock.png")),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
              title: const Text("Profile"),
              subtitle: const Text("Biodata diri"),
              leading: const CircleAvatar(
                  backgroundImage: AssetImage("lib/images/profile.png")),
            ),
          ],
        ));
  }
}
