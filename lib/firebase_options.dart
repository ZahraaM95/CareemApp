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
    apiKey: 'AIzaSyBiY17MVkDuXmH-s6jQDLI0SRojx7egFEg',
    appId: '1:281429936785:web:0cdeafe94450516e7d0d30',
    messagingSenderId: '281429936785',
    projectId: 'profile-a41e0',
    authDomain: 'profile-a41e0.firebaseapp.com',
    storageBucket: 'profile-a41e0.appspot.com',
    measurementId: 'G-B20HM51WQC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCZ5uSPpWW4lfSefoTYo7Zpe5I7tw4xHEw',
    appId: '1:281429936785:android:9747ef12a6c31f1a7d0d30',
    messagingSenderId: '281429936785',
    projectId: 'profile-a41e0',
    storageBucket: 'profile-a41e0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB0r0al_xbG6P-o7u1hVZiZv-VaBd0cv_8',
    appId: '1:281429936785:ios:d5e4810a0fedafa27d0d30',
    messagingSenderId: '281429936785',
    projectId: 'profile-a41e0',
    storageBucket: 'profile-a41e0.appspot.com',
    iosBundleId: 'com.example.flutterApplication44',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB0r0al_xbG6P-o7u1hVZiZv-VaBd0cv_8',
    appId: '1:281429936785:ios:bee47d94c5d9ef407d0d30',
    messagingSenderId: '281429936785',
    projectId: 'profile-a41e0',
    storageBucket: 'profile-a41e0.appspot.com',
    iosBundleId: 'com.example.flutterApplication44.RunnerTests',
  );
}
