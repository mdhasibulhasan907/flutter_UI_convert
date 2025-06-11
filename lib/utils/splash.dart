import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_convert/consts/all_colors.dart';
import 'package:flutter_ui_convert/consts/all_styles.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColors.primaryColor,
      body: Center(
        child: Text("PW E-commerce",style: AllStyles.splash),
      ),
    );
  }
}