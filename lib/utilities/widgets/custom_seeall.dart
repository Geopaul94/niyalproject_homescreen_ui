import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:niyal/presentation/widgets/custom_text.dart';
import 'package:niyal/utilities/constants/constants.dart';

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
          CustomText(
            text: text,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
          Spacer(),
          CustomText(
            text: "See all",
            color: darkpurple,
          ),
          w5,
          Icon(
            CupertinoIcons.forward,
            color: darkpurple,
            size: 20,
          )
        ],
      ),
    );
  }
}
