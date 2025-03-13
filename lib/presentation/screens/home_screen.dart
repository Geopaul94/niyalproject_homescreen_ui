import 'package:flutter/material.dart';
import 'package:niyal/presentation/widgets/custom_appbar.dart';
import 'package:niyal/presentation/widgets/custom_explore_products_container.dart';
import 'package:niyal/presentation/widgets/custom_featured_container.dart';
import 'package:niyal/presentation/widgets/custom_icon_text_container.dart';
import 'package:niyal/presentation/widgets/custom_pickball_journey_container.dart';
import 'package:niyal/presentation/widgets/custom_search.dart';
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
          customeSearchBar(),
          h20,
          SizedBox(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(WordsCount, (index) {
                return CustomIconTextContainer(
                  text: Words[index],
                  icon: Icon(Icons.access_time_filled_outlined),
                );
              }),
            ),
          ),
          h20,
          CustomExploreProductsContainer(
            imagePath: 'assets/river.jpg',
          ),
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
          h30,
          CustomSeeall(text: "Begin yout Pickle journey"),
          h10,
          SizedBox(
            height: 220,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(4, (index) {
                return CustomPickballJourneyContainer(
                  headline: 'Grip ,Stance,and Swing',
                  time: '20',
                  imagePath: 'assets/river.jpg',
                  gamename: 'Pickball',
                );
              }),
            ),
          ),
          h10,
          CustomSeeall(text: "Your picks"),
          h20,
          SizedBox(
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
          ),
          h50,
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
