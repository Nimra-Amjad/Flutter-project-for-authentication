import 'package:flutter/material.dart';
import 'package:instagramclone_1/screens/login_email_password_screen.dart';
import 'package:instagramclone_1/screens/phone_screen.dart';
import 'package:instagramclone_1/screens/signup_email_password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EmailPasswordSignup()));
              },
              child: Text("Email/Password Sign Up")),
          TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EmailPasswordLogin()));
              },
              child: Text("Email/Password Login")),
          TextButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => PhoneScreen()));
              },
              child: Text("Phone Sign In")),
          TextButton(onPressed: () {}, child: Text("Google Sign In")),
          TextButton(onPressed: () {}, child: Text("Facebook Sign In")),
          TextButton(onPressed: () {}, child: Text("Anonymous Sign In"))
        ],
      )),
    );
  }
}
