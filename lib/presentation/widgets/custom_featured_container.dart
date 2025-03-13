import 'package:flutter/material.dart';
import 'package:niyal/presentation/widgets/custom_text.dart';
import 'package:niyal/utilities/constants/constants.dart';

class CustomFeaturedContainer extends StatelessWidget {
  final String headline;
  final Icon icon;
  final String time;
  final String subheading;
  final String imagePath; // Added parameter for image

  const CustomFeaturedContainer({
    super.key,
    required this.headline,
    required this.icon,
    required this.time,
    required this.subheading,
    required this.imagePath, // Required image path parameter
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 250, // Maximum height as requested
        width: 250, // Fixed width as requested
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), // Circular radius
          image: DecorationImage(
            image: AssetImage(imagePath), // Using asset image
            fit: BoxFit.cover, // Makes image cover the container
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space content
            children: [
              // Top section
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text: headline),
                  const SizedBox(height: 8),
                ],
              ),
              // Bottom section
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  icon,
                  const SizedBox(height: 8),
                  CustomText(
                    text: subheading,
                    color: white,
                  ),
                  const SizedBox(height: 8),
                  CustomText(text: time),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
