import 'package:flutter/material.dart';
import 'package:niyal/presentation/widgets/custom_text.dart';
import 'package:niyal/utilities/constants/constants.dart';

class CustomExploreProductsContainer extends StatelessWidget {
  final String imagePath;

  const CustomExploreProductsContainer({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            height: 250,
            width: 600,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
            top: 20,
            right: 30,
            child: Icon(
              Icons.close,
              color: white,
            )),
        Positioned(
          bottom: 80,
          left: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'JOOLA',
                style: const TextStyle(
                  color: white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CustomText(
                text: 'NEXT GENERATION \n EQUIPMENT',
                color: white,
              )
            ],
          ),
        ),
        Positioned(
          bottom: 20,
          left: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(25)),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurpleAccent, // Blue background
                    foregroundColor: Colors.white, // White text/icon color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('Explore products'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
