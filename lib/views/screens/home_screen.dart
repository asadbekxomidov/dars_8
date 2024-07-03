// ignore_for_file: use_build_context_synchronously, prefer_const_constructors, avoid_print, use_super_parameters

import 'package:dars_8/views/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          print("a");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (ctx) => LoginScreen(),
            ),
          );
        }
        HomeScreen();
        return Scaffold(
          appBar: AppBar(
            title: Text('Home'),
            actions: [
              IconButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
                icon: Icon(Icons.logout),
              ),
            ],
          ),
        );
      },
    );
  }
}
