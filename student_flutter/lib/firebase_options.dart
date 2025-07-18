
// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBux593V7kzWrNBGhI6le66Vxgf8cjPVEk',
    appId: '1:271972627035:web:780d99ac76fbfefb66457e',
    messagingSenderId: '271972627035',
    projectId: 'student-monitoring-syste-b6b4c',
    authDomain: 'student-monitoring-syste-b6b4c.firebaseapp.com',
    storageBucket: 'student-monitoring-syste-b6b4c.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBacFA8_EtREJpQcE_neOc2fFEFTHdKyuo',
    appId: '1:271972627035:android:96419797233bc6a466457e',
    messagingSenderId: '271972627035',
    projectId: 'student-monitoring-syste-b6b4c',
    storageBucket: 'student-monitoring-syste-b6b4c.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD_eAbmDNQ6d2yuMjWoQlLpdK7ts34idSI',
    appId: '1:271972627035:ios:3b3ae6337808632b66457e',
    messagingSenderId: '271972627035',
    projectId: 'student-monitoring-syste-b6b4c',
    storageBucket: 'student-monitoring-syste-b6b4c.firebasestorage.app',
    iosBundleId: 'com.example.studentFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD_eAbmDNQ6d2yuMjWoQlLpdK7ts34idSI',
    appId: '1:271972627035:ios:3b3ae6337808632b66457e',
    messagingSenderId: '271972627035',
    projectId: 'student-monitoring-syste-b6b4c',
    storageBucket: 'student-monitoring-syste-b6b4c.firebasestorage.app',
    iosBundleId: 'com.example.studentFlutter',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBux593V7kzWrNBGhI6le66Vxgf8cjPVEk',
    appId: '1:271972627035:web:30030859d836cad466457e',
    messagingSenderId: '271972627035',
    projectId: 'student-monitoring-syste-b6b4c',
    authDomain: 'student-monitoring-syste-b6b4c.firebaseapp.com',
    storageBucket: 'student-monitoring-syste-b6b4c.firebasestorage.app',
  );

}