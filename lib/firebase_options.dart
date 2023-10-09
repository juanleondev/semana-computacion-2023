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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDfKNpPil3fSVFgB9Xhs_mMF9bdG1rYbHo',
    appId: '1:894595622449:web:062db8738dfe5652e09710',
    messagingSenderId: '894595622449',
    projectId: 'cs-foro',
    authDomain: 'cs-foro.firebaseapp.com',
    storageBucket: 'cs-foro.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAprHbGq2w5AXHGXnULdaxh15iLKqgOA70',
    appId: '1:894595622449:android:6f89cf9a52112ef0e09710',
    messagingSenderId: '894595622449',
    projectId: 'cs-foro',
    storageBucket: 'cs-foro.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDXXZd6SN-kAEHIOIcGBi9wCvGT98ZNcX8',
    appId: '1:894595622449:ios:3ec67d72fb29341ce09710',
    messagingSenderId: '894595622449',
    projectId: 'cs-foro',
    storageBucket: 'cs-foro.appspot.com',
    iosBundleId: 'com.example.csForo',
  );
}
