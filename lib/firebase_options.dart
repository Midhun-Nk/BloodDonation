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
    apiKey: 'AIzaSyBbBLRJet4EHhGCpxv8CbfuYKxOl4laeNM',
    appId: '1:932270073154:web:b4a577c955ec64f5d414db',
    messagingSenderId: '932270073154',
    projectId: 'blood-donation-app-286fe',
    authDomain: 'blood-donation-app-286fe.firebaseapp.com',
    storageBucket: 'blood-donation-app-286fe.appspot.com',
    measurementId: 'G-QFK5VHFFEV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAGTGEqDf93rqQKQqzqwW4PqBAulPIZPFA',
    appId: '1:932270073154:android:219fc7ebfaf32fe8d414db',
    messagingSenderId: '932270073154',
    projectId: 'blood-donation-app-286fe',
    storageBucket: 'blood-donation-app-286fe.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDteBlR03MoGcG-ZrB8M22kMniQLx2IrQA',
    appId: '1:932270073154:ios:4ad82220d2de89add414db',
    messagingSenderId: '932270073154',
    projectId: 'blood-donation-app-286fe',
    storageBucket: 'blood-donation-app-286fe.appspot.com',
    iosBundleId: 'com.example.bloodDonationApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDteBlR03MoGcG-ZrB8M22kMniQLx2IrQA',
    appId: '1:932270073154:ios:4ad82220d2de89add414db',
    messagingSenderId: '932270073154',
    projectId: 'blood-donation-app-286fe',
    storageBucket: 'blood-donation-app-286fe.appspot.com',
    iosBundleId: 'com.example.bloodDonationApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBbBLRJet4EHhGCpxv8CbfuYKxOl4laeNM',
    appId: '1:932270073154:web:e15081a9f0a67cf9d414db',
    messagingSenderId: '932270073154',
    projectId: 'blood-donation-app-286fe',
    authDomain: 'blood-donation-app-286fe.firebaseapp.com',
    storageBucket: 'blood-donation-app-286fe.appspot.com',
    measurementId: 'G-GE0XH5W80F',
  );
}
