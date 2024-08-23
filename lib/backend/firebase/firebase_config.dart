import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyARrXHozbYrZIlDtRoyEA9fRSq2e8RwAeM",
            authDomain: "master-ecqtpw.firebaseapp.com",
            projectId: "master-ecqtpw",
            storageBucket: "master-ecqtpw.appspot.com",
            messagingSenderId: "628091154885",
            appId: "1:628091154885:web:2937453d30222f4fb4dbac"));
  } else {
    await Firebase.initializeApp();
  }
}
