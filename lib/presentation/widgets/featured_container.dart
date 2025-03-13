import 'package:flutter/material.dart';
import 'package:niyal/presentation/widgets/custom_featured_container.dart';

class FeaturedContainer extends StatelessWidget {
  const FeaturedContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(4, (index) {
          return CustomFeaturedContainer(
            headline: "A fresh start",
            icon: Icon(Icons.headphones),
            time: '5',
            subheading: 'Mindfulness',
            imagePath: 'assets/river.jpg',
          );
        }),
      ),
    );
  }
}
