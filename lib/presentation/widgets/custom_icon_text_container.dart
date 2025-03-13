import 'package:flutter/material.dart';
import 'package:niyal/presentation/widgets/custom_text.dart';
import 'package:niyal/utilities/constants/constants.dart';

class CustomIconTextContainer extends StatelessWidget {
  final Color color;
  final String text;
  final String? image;
  final Icon? icon;
  const CustomIconTextContainer(
      {super.key,
      this.color = green,
      required this.text,
      this.image,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:   8.0),
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: color),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                _buildIconOrImage(),
                CustomText(text: text),
              ],
            ),
          )),
    );
  }

  Widget _buildIconOrImage() {
    if (icon != null) {
      return Icon(icon!.icon);
    } else if (image != null) {
      return Image.network(image!);
    }
    return Container();
  }
}
