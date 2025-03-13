import 'package:flutter/material.dart';
import 'package:niyal/presentation/widgets/custom_text.dart';

class CustomSeeall extends StatelessWidget {
final String text;

  const CustomSeeall({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(text:text),
          Spacer(),
          CustomText(text: "See all"),
          Icon(Icons.arrow_forward)
        ],
      ),
    );
  }
}
