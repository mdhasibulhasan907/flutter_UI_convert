import 'package:flutter/material.dart';
import 'package:flutter_ui_convert/utils/home.dart';
import 'package:flutter_ui_convert/utils/splash.dart';
import 'package:flutter_ui_convert/utils/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
    debugShowCheckedModeBanner: false,
    home: WelcomeScreen()
    
    );
  }
}

