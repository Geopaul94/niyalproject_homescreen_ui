import 'package:flutter/material.dart';
import 'package:niyal/presentation/widgets/custom_text.dart';
import 'package:niyal/utilities/constants/constants.dart';

class CustomFeaturedContainer extends StatelessWidget {
  final String headline;
  final Icon icon;
  final String time;
  final String subheading;
  final String imagePath;

  const CustomFeaturedContainer({
    super.key,
    required this.headline,
    required this.icon,
    required this.time,
    required this.subheading,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 250,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: headline,
                color: white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              Row(
                children: [
                  Icon(
                    icon.icon,
                    size: 18,
                    color: white,
                  ),
                  w5,
                  CustomText(
                    text: '$time min  $subheading',
                    fontSize: 14,
                    color: white,
                  ),
                  w5,
                ],
              ),
              h5
            ],
          ),
        ),
      ),
    );
  }
}
