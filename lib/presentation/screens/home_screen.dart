import 'package:flutter/material.dart';
import 'package:niyal/presentation/widgets/custom_appbar.dart';
import 'package:niyal/presentation/widgets/custom_explore_products_container.dart';
import 'package:niyal/presentation/widgets/custom_featured_container.dart';
import 'package:niyal/presentation/widgets/custom_icon_text_container.dart';
import 'package:niyal/presentation/widgets/custom_seeall.dart';
import 'package:niyal/presentation/widgets/custom_text.dart';
import 'package:niyal/utilities/constants/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey,
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        children: [
          const CustomAppbar(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              color: white,
              child: Row(
                children: [
                  Icon(Icons.search),
                  CustomText(text: "Meditation..."),
                  Spacer(),
                  Icon(Icons.mic)
                ],
              ),
            ),
          ),
          h10,
          SizedBox(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(WordsCount, (index) {
                return CustomIconTextContainer(text: Words[index]);
              }),
            ),
          ),
          CustomExploreProductsContainer(
              imagePath: 'assets/river.jpg', text: 'Joola'),
          h20,
          CustomSeeall(text: "Featured"),
          h10,
          SizedBox(
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
          ),
          h20,
          CustomSeeall(text: "Begin yout Pickle journey"),
          h200
        ],
      ))),
    );
  }
}

int WordsCount = Words.length;

final List<String> Words = [
  'New ',
  'Favorites',
  'Yoga',
  'Gym',
  'Workout',
  'Yoga',
  'Gym',
  'Workout'
];
