// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBmqhaOF-cEo9P4MMHleIhJGy5kRECsux8',
    appId: '1:120803462036:web:8eef3d2959cf51f7f59d81',
    messagingSenderId: '120803462036',
    projectId: 'uts-tpm',
    authDomain: 'uts-tpm.firebaseapp.com',
    storageBucket: 'uts-tpm.appspot.com',
    measurementId: 'G-75Y45BX1GJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDNpZE6LLCfRjNyw-qdwg7HwBuGe1bkO3Q',
    appId: '1:120803462036:android:c0e596fbc12d3c4af59d81',
    messagingSenderId: '120803462036',
    projectId: 'uts-tpm',
    storageBucket: 'uts-tpm.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAZ5I0XTyCRx4gP816K6kYrHGGlQX0oPuk',
    appId: '1:120803462036:ios:71ca9a3ae46dd420f59d81',
    messagingSenderId: '120803462036',
    projectId: 'uts-tpm',
    storageBucket: 'uts-tpm.appspot.com',
    iosClientId: '120803462036-4fsj0t72120qkj8v7gkjvb5bdonvtnkf.apps.googleusercontent.com',
    iosBundleId: 'com.example.utsTpm',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAZ5I0XTyCRx4gP816K6kYrHGGlQX0oPuk',
    appId: '1:120803462036:ios:71ca9a3ae46dd420f59d81',
    messagingSenderId: '120803462036',
    projectId: 'uts-tpm',
    storageBucket: 'uts-tpm.appspot.com',
    iosClientId: '120803462036-4fsj0t72120qkj8v7gkjvb5bdonvtnkf.apps.googleusercontent.com',
    iosBundleId: 'com.example.utsTpm',
  );
}
