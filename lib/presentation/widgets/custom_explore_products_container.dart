import 'package:flutter/material.dart';

class CustomExploreProductsContainer extends StatelessWidget {
  final String imagePath;
  final String text;

  const CustomExploreProductsContainer({
    super.key,
    required this.imagePath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            height: 300,
            width: 600,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(imagePath), // Background image
                fit: BoxFit.cover, // Makes image cover the container
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text on the image
              Text(
                text,
                style: const TextStyle(
                  color: Colors.white, // White text for visibility
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10), // Space between text and button
              // Blue Elevated Button
              ElevatedButton(
                onPressed: () {
                  // Add your button action here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Blue background
                  foregroundColor: Colors.white, // White text/icon color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text('Click Me'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
