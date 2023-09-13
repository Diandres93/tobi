import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBOOi_nimkLdgET3rCXVUsltEFQYgWHeF0",
            authDomain: "tobi-eaabf.firebaseapp.com",
            projectId: "tobi-eaabf",
            storageBucket: "tobi-eaabf.appspot.com",
            messagingSenderId: "130929608450",
            appId: "1:130929608450:web:8ce2da70ce457a2b06241b",
            measurementId: "G-01XFZTRMT5"));
  } else {
    await Firebase.initializeApp();
  }
}
