// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../theme/colors.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(40)
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
    
              //text
              Text(
                text,
                style: TextStyle(color: Colors.white),
              ),
    
              const SizedBox(width: 10),
    
              //icon
              Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}