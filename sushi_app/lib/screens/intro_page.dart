// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/components/button.dart';
import 'package:sushi_app/theme/colors.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //shop name
            Text(
              'SUSHI MAN',
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
              ),
            ),

            SizedBox(height: 25),

            //icon
            Padding(
              padding: const EdgeInsets.all(50),
              child: Image.asset('assets/salmon_eggs.png'),
            ),

            //title
            Text(
              'THE TASTE OF JAPANESE FOOD',
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 44,
                color: Colors.white,
              ),
            ),

            //subtitle
            Text(
              'Feel the taste of most popular Japanese foods from anywhere and anytime.',
              style: TextStyle(
                height: 2,
                color: Colors.grey[300],
              ),
            ),

            //button
            Button(
              text: "Get Started",
              onTap:  (){
                Navigator.pushNamed(context, '/home');
              },
            )
          ],
        ),
      ),
    );
  }
}
