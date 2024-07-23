import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_flutter/Screens/homepage.dart';
import 'package:login_flutter/Screens/login.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key}); // Add missing semicolon

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return HomePage(); // Ensure HomePage is correctly defined in home.dart
          } else {
            return LoginPage();
          }
        },
      ),
    );
  }
}
