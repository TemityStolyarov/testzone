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
    apiKey: 'AIzaSyBdlgoQHtiyIhGn2xkUDsEiwRQ-leRhwbI',
    appId: '1:580950946660:web:96ab82368275f9c1784071',
    messagingSenderId: '580950946660',
    projectId: 'testzoneauth',
    authDomain: 'testzoneauth.firebaseapp.com',
    storageBucket: 'testzoneauth.appspot.com',
    measurementId: 'G-1V30HD9PTL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBL2Wg8NU2zJW0gGHoYb1XqMbSZboSYwYo',
    appId: '1:580950946660:android:9080c15973a81166784071',
    messagingSenderId: '580950946660',
    projectId: 'testzoneauth',
    storageBucket: 'testzoneauth.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBqqb-0g55HYK7YVDp0iCQznM2xkZrMsXQ',
    appId: '1:580950946660:ios:eac5859f1b3abd89784071',
    messagingSenderId: '580950946660',
    projectId: 'testzoneauth',
    storageBucket: 'testzoneauth.appspot.com',
    iosClientId: '580950946660-grr3a22cor15m4cdf6f3t247u3j931nl.apps.googleusercontent.com',
    iosBundleId: 'com.example.testzone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBqqb-0g55HYK7YVDp0iCQznM2xkZrMsXQ',
    appId: '1:580950946660:ios:eac5859f1b3abd89784071',
    messagingSenderId: '580950946660',
    projectId: 'testzoneauth',
    storageBucket: 'testzoneauth.appspot.com',
    iosClientId: '580950946660-grr3a22cor15m4cdf6f3t247u3j931nl.apps.googleusercontent.com',
    iosBundleId: 'com.example.testzone',
  );
}