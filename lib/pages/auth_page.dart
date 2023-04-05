import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:uts_tpm/main.dart';
import 'package:uts_tpm/pages/login_screen.dart';
import 'package:uts_tpm/pages/home_screen.dart';
import 'package:uts_tpm/pages/login_or_register.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        // user is log in
        if (snapshot.hasData) {
          return HomePage();
        } else {
          return LoginOrRegister();
        }
      },
    ));
  }
}
