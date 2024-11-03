import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyB3FFSQNGwTWJ-ou0FqI0KFMGTBNhEULKs",
            authDomain: "ihdz-fbnv6x.firebaseapp.com",
            projectId: "ihdz-fbnv6x",
            storageBucket: "ihdz-fbnv6x.appspot.com",
            messagingSenderId: "626434709041",
            appId: "1:626434709041:web:039e5462e4fcef9304a710"));
  } else {
    await Firebase.initializeApp();
  }
}
