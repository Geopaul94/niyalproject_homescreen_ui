import 'package:flutter/material.dart';
import 'package:niyal/presentation/screens/home_screen.dart';
import 'package:niyal/presentation/widgets/custom_icon_text_container.dart';
import 'package:niyal/utilities/functions/words_list.dart';

class SelectOptionContainer extends StatelessWidget {
  const SelectOptionContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}