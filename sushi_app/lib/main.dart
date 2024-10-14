// ignore_for_file: prefer_const_constructors, unused_element, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:sushi_app/screens/home_page.dart';

import 'screens/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sushi App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          appBarTheme: AppBarTheme(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
          )),
      home: IntroPage(),
      routes: {
        '/intro': (context) => const IntroPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
