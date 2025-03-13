import 'package:flutter/material.dart';
import 'package:niyal/presentation/widgets/custom_text.dart';
import 'package:niyal/utilities/constants/constants.dart';

class customeSearchBar extends StatelessWidget {
  const customeSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(Icons.search),
              w10,
              CustomText(text: "Meditation..."),
              Spacer(),
              Icon(Icons.mic)
            ],
          ),
        ),
      ),
    );
  }
}
