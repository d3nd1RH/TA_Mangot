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
    apiKey: 'AIzaSyDKp52xta1ljzosgBhMFCtMRirDDoyTeVU',
    appId: '1:320455604256:web:8329fd7ff7117b4258e445',
    messagingSenderId: '320455604256',
    projectId: 'maggotbsf-app',
    authDomain: 'maggotbsf-app.firebaseapp.com',
    storageBucket: 'maggotbsf-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC6vHjm_XgBPIvQ1XFBpbTr0DtjfpkTFkc',
    appId: '1:320455604256:android:55065b485eb14a7858e445',
    messagingSenderId: '320455604256',
    projectId: 'maggotbsf-app',
    storageBucket: 'maggotbsf-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBCMQwV4OjPILhZ0ktToylr-lFexI5LBdk',
    appId: '1:320455604256:ios:ff848d3d338faac158e445',
    messagingSenderId: '320455604256',
    projectId: 'maggotbsf-app',
    storageBucket: 'maggotbsf-app.appspot.com',
    iosBundleId: 'com.example.aplikasiHp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBCMQwV4OjPILhZ0ktToylr-lFexI5LBdk',
    appId: '1:320455604256:ios:ff848d3d338faac158e445',
    messagingSenderId: '320455604256',
    projectId: 'maggotbsf-app',
    storageBucket: 'maggotbsf-app.appspot.com',
    iosBundleId: 'com.example.aplikasiHp',
  );
}
