import 'package:flutter/material.dart';
import 'package:niyal/presentation/widgets/custom_icon_text_container.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Row(
        children: [
          Icon(Icons.timer),
          Spacer(),
          Row(
            children: [
              CustomIconTextContainer(
                text: "Rewards",
                icon: Icon(Icons.access_alarm),
              ),
            ],
          )
        ],
      ),
    );
  }
}
