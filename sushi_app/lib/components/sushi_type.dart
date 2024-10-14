// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/models/sushi_types.dart';

class SushiType extends StatelessWidget {
  const SushiType({super.key, required this.sushiTypes});
  final SushiTypes sushiTypes;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 5, bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Image.asset(
            sushiTypes.imagePath,
            height: 35,
          ),
          const SizedBox(height: 5),
          Text(
            sushiTypes.type,
            style: GoogleFonts.dmSerifDisplay(fontSize: 17),
          ),
        ],
      ),
    );
  }
}
