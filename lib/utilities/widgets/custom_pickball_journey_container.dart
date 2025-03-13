import 'package:flutter/material.dart';
import 'package:niyal/presentation/widgets/custom_text.dart';
import 'package:niyal/utilities/constants/constants.dart';

class CustomPickballJourneyContainer extends StatelessWidget {
  final String headline;
  final String imagePath;
  final String time;
  final String gamename;
  const CustomPickballJourneyContainer(
      {super.key,
      required this.headline,
      required this.time,
      required this.imagePath,
      required this.gamename});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            child: Image.asset(imagePath, fit: BoxFit.cover, height: 150),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                    text: headline, fontSize: 18, fontWeight: FontWeight.w600),
                Row(
                  children: [
                    Icon(Icons.video_call, size: 18, color: lightgrey),
                    w5,
                    CustomText(
                        text: ' ${time}min * $gamename',
                        fontSize: 14,
                        color: lightgrey),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
