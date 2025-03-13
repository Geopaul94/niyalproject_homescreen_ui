


import 'package:flutter/material.dart';
import 'package:niyal/presentation/widgets/custom_pickball_journey_container.dart';


class YourpicksContainer extends StatelessWidget {
  const YourpicksContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 215,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(4, (index) {
          return CustomPickballJourneyContainer(
            headline: 'Grip ,Stance,and Swing',
            time: '20',
            imagePath: 'assets/river.jpg',
            gamename: 'Table tennis',
          );
        }),
      ),
    );
  }
}
