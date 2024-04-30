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
    apiKey: 'AIzaSyDMta2bma6w5sbvuRvJ0EpdviyXx7UW1hI',
    appId: '1:722068871781:web:964eb58beadf5ccdef848c',
    messagingSenderId: '722068871781',
    projectId: 'authentication-80428',
    authDomain: 'authentication-80428.firebaseapp.com',
    storageBucket: 'authentication-80428.appspot.com',
    measurementId: 'G-HE4F8098ZC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAMcr7na28V8nzanUdAm3OnpS2fL2GcB2s',
    appId: '1:722068871781:android:3ee7d046e8f04d89ef848c',
    messagingSenderId: '722068871781',
    projectId: 'authentication-80428',
    storageBucket: 'authentication-80428.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCS2cy_ADrQRqbrc_TcC5vRJhdxBg7QduY',
    appId: '1:722068871781:ios:7dbb9aba5ceabd11ef848c',
    messagingSenderId: '722068871781',
    projectId: 'authentication-80428',
    storageBucket: 'authentication-80428.appspot.com',
    iosBundleId: 'com.becoder.authentication',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCS2cy_ADrQRqbrc_TcC5vRJhdxBg7QduY',
    appId: '1:722068871781:ios:d5079cdec27811b5ef848c',
    messagingSenderId: '722068871781',
    projectId: 'authentication-80428',
    storageBucket: 'authentication-80428.appspot.com',
    iosBundleId: 'com.becoder.authentication.RunnerTests',
  );
}
