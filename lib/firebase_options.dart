import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: "AIzaSyAKey6SbcDdLD3tN0p-_EcPT9OjdZy72H8",
    authDomain: 'your-project.firebaseapp.com',
    projectId: 'flutter1-4b8ee',
    storageBucket: 'your-project.appspot.com',
    messagingSenderId: 'your-sender-id',
    appId: '1:953200226490:android:714f862286f76bd79cd283',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: "AIzaSyAKey6SbcDdLD3tN0p-_EcPT9OjdZy72H8",
    appId: '1:953200226490:android:714f862286f76bd79cd283',
    messagingSenderId: 'your-sender-id',
    projectId: 'flutter1-4b8ee',
    storageBucket: 'your-project.appspot.com',
  );
}
