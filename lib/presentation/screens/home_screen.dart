import 'package:flutter/material.dart';
import 'package:niyal/presentation/widgets/custom_appbar.dart';
import 'package:niyal/presentation/widgets/custom_explore_products_container.dart';
import 'package:niyal/presentation/widgets/custom_search.dart';

import 'package:niyal/presentation/widgets/custom_seeall.dart';
import 'package:niyal/presentation/widgets/featured_container.dart';
import 'package:niyal/presentation/widgets/pickball_journey_container.dart';
import 'package:niyal/presentation/widgets/select_option_container.dart';
import 'package:niyal/presentation/widgets/your_picks_container.dart';
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
          SelectOptionContainer(),
          h20,
          CustomExploreProductsContainer(
            imagePath: 'assets/river.jpg',
          ),
          h20,
          CustomSeeall(text: "Featured"),
          h10,
          FeaturedContainer(),
          h30,
          CustomSeeall(text: "Begin yout Pickle journey"),
          h10,
          PickleJourneyContainer(),
          h10,
          CustomSeeall(text: "Your picks"),
          h20,
          YourpicksContainer(),
          h50,
        ],
      ))),
    );
  }
}
