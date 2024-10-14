// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_import

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/components/button.dart';
import 'package:sushi_app/components/sushi_type.dart';
import 'package:sushi_app/models/food.dart';
import 'package:sushi_app/models/sushi_types.dart';
import 'package:sushi_app/theme/colors.dart';

import '../components/food_tile.dart';
import 'details_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //food menu
  List foodMenu = [
    Food(
      name: "Salmon Sushi",
      price: "21.00",
      imagePath: 'assets/salmon_sushi.png',
      rating: "4.9",
    ),
    Food(
      name: "Tuna",
      price: "23.00",
      imagePath: 'assets/tuna.png',
      rating: "4.3",
    ),
    Food(
      name: "Salmon Eggs",
      price: "25.00",
      imagePath: 'assets/salmon_eggs.png',
      rating: "4.1",
    ),
  ];

  List sushiTypes = [
    SushiTypes(
      imagePath: 'assets/many_sushi.png',
      type: 'Sushi',
    ),
    SushiTypes(
      imagePath: 'assets/salmon_eggs.png',
      type: 'Ramen',
    ),
    SushiTypes(
      imagePath: 'assets/many_sushi.png',
      type: 'Sushi',
    ),
  ];

  void navigateToFoodDetails(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FoodDetailsPage(
          food: foodMenu[index],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title:
            // Icon(Icons.location_on_outlined, color: Colors.red,),
            Text(
          'Tokyo',
          style: TextStyle(color: Colors.grey[900]),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //card
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: primaryColor,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Get 32% Promo",
                      style: GoogleFonts.dmSerifDisplay(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Button(
                      text: 'Buy Food',
                      onTap: () {},
                    ),
                  ],
                ),
                Image.asset(
                  'assets/many_sushi.png',
                  height: 100,
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          //search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.white),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.white),
                ),
                hintText: "Search here",
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey[700],
                ),
              ),
            ),
          ),

          const SizedBox(height: 10),

          //food types
          // Expanded(
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     itemCount: sushiTypes.length,
          //     itemBuilder: (context, index) => SushiType(
          //       sushiTypes: sushiTypes[index],
          //     ),
          //   ),
          // ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Food Menu",
              style: GoogleFonts.dmSerifDisplay(fontSize: 20),
            ),
          ),

          //food menu
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodMenu.length,
              itemBuilder: (context, index) => FoodTile(
                food: foodMenu[index],
                onTap: () => navigateToFoodDetails(index),
              ),
            ),
          ),

          const SizedBox(height: 15),

          //popular food
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/salmon_eggs.png',
                      height: 60,
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Salmon Eggs",
                          style: GoogleFonts.dmSerifDisplay(
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text('\$21.00',
                            style: TextStyle(
                              color: Colors.grey[700],
                            )),
                      ],
                    ),
                  ],
                ),
                const Icon(
                  Icons.favorite_outline,
                  color: Colors.grey,
                  size: 28,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
