import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:instagramclone_1/services/firebase_auth_methods.dart';

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({super.key});

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  final TextEditingController PhoneController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    PhoneController.dispose();
  }

  void phoneSignIn() {
    FirebaseAuthMethods(FirebaseAuth.instance)
        .phoneSignIn(context, PhoneController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: PhoneController,
            decoration: const InputDecoration(hintText: "Enter Phone Number"),
          ),
          TextButton(onPressed: phoneSignIn, child: Text("Send OTP"))
        ],
      ),
    );
  }
}
