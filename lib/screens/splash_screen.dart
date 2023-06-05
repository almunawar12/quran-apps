import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran_apps/screens/global.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body:  SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Text(
                'Quran App',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 29,
                ),),
                const SizedBox(
                  height: 16,
                  ),
                Text(
                  'Larn Quran and\nRecite Once Every Day',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: text,
                ),
                textAlign: TextAlign.center,)
            ],),
          ),
          ),
      ),
    );
  }
}