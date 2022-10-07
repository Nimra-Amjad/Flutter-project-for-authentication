import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:instagramclone_1/screens/login_email_password_screen.dart';
import 'package:instagramclone_1/screens/phone_screen.dart';
import 'package:instagramclone_1/screens/signup_email_password_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyA3EKU9bv8flLtV2fWyICTD05FmNahhTn0",
        appId: "",
        messagingSenderId: "",
        projectId: "instaclone-ee1f5"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PhoneScreen(),
    );
  }
}
