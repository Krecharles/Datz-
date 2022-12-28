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
    apiKey: 'AIzaSyC2-m0WV-7rRv_3o4pJ51CSaixv-pPaado',
    appId: '1:497725344299:web:113103de874b09c944786e',
    messagingSenderId: '497725344299',
    projectId: 'datz-38fd2',
    authDomain: 'datz-38fd2.firebaseapp.com',
    storageBucket: 'datz-38fd2.appspot.com',
    measurementId: 'G-E7D4NPMCBE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCZWgFzI4zuv-rxHb4QZg_vFJsADuC5znc',
    appId: '1:497725344299:android:711d67577920be4a44786e',
    messagingSenderId: '497725344299',
    projectId: 'datz-38fd2',
    storageBucket: 'datz-38fd2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDbXxR-fgoZKjh-RCpemOREVP7XcdQt-04',
    appId: '1:497725344299:ios:c67cf5c9bbeadad044786e',
    messagingSenderId: '497725344299',
    projectId: 'datz-38fd2',
    storageBucket: 'datz-38fd2.appspot.com',
    iosClientId: '497725344299-thgnlh857c2ckki368g5df2j9bs93sjj.apps.googleusercontent.com',
    iosBundleId: 'com.charelkremer.Datz',
  );
}
