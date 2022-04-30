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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyC420J9g5yB2ot6KWv7b2eRWbSfSlEOPXg',
    appId: '1:956380211574:web:fd596a9cc854ed2bd0f257',
    messagingSenderId: '956380211574',
    projectId: 'project1-96157',
    authDomain: 'project1-96157.firebaseapp.com',
    storageBucket: 'project1-96157.appspot.com',
    measurementId: 'G-8GXCY9NBB9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBC5t6W9Knb-PT57hgOyUgInltJ1A1DCow',
    appId: '1:956380211574:android:50b94e281202e090d0f257',
    messagingSenderId: '956380211574',
    projectId: 'project1-96157',
    storageBucket: 'project1-96157.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAQ9ZJaWnAXoOYqCAhjupKNqQUU7ka5Mac',
    appId: '1:956380211574:ios:f6449915f9843e69d0f257',
    messagingSenderId: '956380211574',
    projectId: 'project1-96157',
    storageBucket: 'project1-96157.appspot.com',
    iosClientId: '956380211574-2k7darleacnp71gjeut6iaj85o9nsd1j.apps.googleusercontent.com',
    iosBundleId: 'hello',
  );
}