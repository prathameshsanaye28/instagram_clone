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
    apiKey: 'AIzaSyBlMrTW3xczXNSB9-bdDzue07MsPsNs5V0',
    appId: '1:531754907205:web:61e67717f379857cc5552c',
    messagingSenderId: '531754907205',
    projectId: 'instagram-clone-12699',
    authDomain: 'instagram-clone-12699.firebaseapp.com',
    storageBucket: 'instagram-clone-12699.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDGNnTpDMsxNNdzmEaRTvNRFIHpnCn1lag',
    appId: '1:531754907205:android:880c4e7837ae0636c5552c',
    messagingSenderId: '531754907205',
    projectId: 'instagram-clone-12699',
    storageBucket: 'instagram-clone-12699.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA-1ChkOnhxVN7k78b9m7xbqN7e_WTV9PM',
    appId: '1:531754907205:ios:eb16ac2ed45f1873c5552c',
    messagingSenderId: '531754907205',
    projectId: 'instagram-clone-12699',
    storageBucket: 'instagram-clone-12699.appspot.com',
    iosBundleId: 'com.example.instagramClone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA-1ChkOnhxVN7k78b9m7xbqN7e_WTV9PM',
    appId: '1:531754907205:ios:eb16ac2ed45f1873c5552c',
    messagingSenderId: '531754907205',
    projectId: 'instagram-clone-12699',
    storageBucket: 'instagram-clone-12699.appspot.com',
    iosBundleId: 'com.example.instagramClone',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBlMrTW3xczXNSB9-bdDzue07MsPsNs5V0',
    appId: '1:531754907205:web:7ac81ee73ba8653cc5552c',
    messagingSenderId: '531754907205',
    projectId: 'instagram-clone-12699',
    authDomain: 'instagram-clone-12699.firebaseapp.com',
    storageBucket: 'instagram-clone-12699.appspot.com',
  );
}