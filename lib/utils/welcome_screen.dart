import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_convert/consts/all_colors.dart';
import 'package:flutter_ui_convert/consts/all_styles.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(child: Image.asset('assets/images/man.png')),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 90.0),
                child: Column(
                  children: [
                    Text(
                      "\t\tDiscover Your \nDream Job here",
                      style: AllStyles.heading,
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      'Explore all the existing job roles based on your \n\t\tinterest and study major',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25.0),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(60.0),
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AllColors.primaryColor,
                        fixedSize: Size(120, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15), 
                        ),
                      ),
                      child: Text("Login",style: AllStyles.aboutText,),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(120, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15), 
                        ),
                      ),
                      child: Text("Register"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
