// ignore_for_file: depend_on_referenced_packages

import 'package:dars_8/utils/routnames.dart';
import 'package:dars_8/views/screens/home_screen.dart';
import 'package:dars_8/views/screens/login_screen.dart';
import 'package:dars_8/views/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteNames.login,
      routes: {
        RouteNames.login: (context) =>
            LoginScreen(),
        RouteNames.register: (context) =>
            RegisterScreen(),
        RouteNames.home: (context) => HomeScreen(),
      },
    );
  }
}
