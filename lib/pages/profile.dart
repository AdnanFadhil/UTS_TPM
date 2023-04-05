import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Utama"),
        backgroundColor: Colors.amber,
      ),
      backgroundColor: Colors.amber[100],
      body: ProfileUI(),
    );
  }
}

class ProfileUI extends StatelessWidget {
  const ProfileUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.5), BlendMode.dstATop),
              child: Image(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/e/e7/Everest_North_Face_toward_Base_Camp_Tibet_Luca_Galuzzi_2006.jpg")),
            ),
            Positioned(
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("lib/images/wolf.png"),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: ListTile(
            title: Text("Name "),
            subtitle: Text("Adnanfadhil Yaser"),
          ),
        ),
        Container(
          child: ListTile(
            title: Text("NIM"),
            subtitle: Text("123190098"),
          ),
        ),
        Container(
          child: ListTile(
            title: Text("Tempat/Tanggal Lahir"),
            subtitle: Text("Curup, 8 Juli 2001"),
          ),
        ),
        Container(
          child: ListTile(
            title: Text("Harapan"),
            subtitle: Text("Menjadi anak yang sholeh dan mendapat rejeki"),
          ),
        ),
      ],
    );
  }
}
