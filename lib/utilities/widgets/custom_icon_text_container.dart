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
      this.color = grey,
   
      required this.text,
      this.image,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: black),
              borderRadius: BorderRadius.circular(30),
              color: color),
          child: Padding(
            padding: const EdgeInsets.all(7),
            child: Row(
              children: [
                _buildIconOrImage(),
                w5,
                CustomText(text: text ,color: darkpurple,),
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
