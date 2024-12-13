import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCxpzhn9eVZlD_59y1GxGXf6DhMX-BMgsc",
            authDomain: "arteon-pulse.firebaseapp.com",
            projectId: "arteon-pulse",
            storageBucket: "arteon-pulse.firebasestorage.app",
            messagingSenderId: "1049273107890",
            appId: "1:1049273107890:web:101531ec2f0bc9d2b210ab",
            measurementId: "G-NWB5090RCE"));
  } else {
    await Firebase.initializeApp();
  }
}
