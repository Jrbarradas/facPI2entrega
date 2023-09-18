import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD7R--Z90v3IovtjUtN83QXb9m6lbYrUtc",
            authDomain: "anonymous-rj.firebaseapp.com",
            projectId: "anonymous-rj",
            storageBucket: "anonymous-rj.appspot.com",
            messagingSenderId: "895937475874",
            appId: "1:895937475874:web:acdd186bfe903427b6617b",
            measurementId: "G-XJ22SFYKGW"));
  } else {
    await Firebase.initializeApp();
  }
}
