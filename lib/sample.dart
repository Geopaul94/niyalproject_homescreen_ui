import 'package:flutter/material.dart';
import 'package:niyal/presentation/widgets/custom_text.dart';
import 'package:niyal/utilities/constants/constants.dart';

class CustomFeaturedContainer extends StatelessWidget {
  final String headline;
  final Icon icon;
  final String time;
  final String subheading;

  const CustomFeaturedContainer(
      {super.key,
      required this.headline,
      required this.icon,
      required this.time,
      required this.subheading});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 10,
          left: 10,
          right: 0,
          top: 0,
          child: Column(
            children: [
              CustomText(text: headline),
              icon, // Use the icon parameter directly
              CustomText(text: subheading),
            ],
          ),
        ),
        Container(
          color: Colors.black, // Use a named color instead of 'black'
          height: 300,
          width: 300,
        ),
      ],
    );
  }
}