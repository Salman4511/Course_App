import 'package:course_app/constants/constants.dart';
import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget({
    super.key, required this.color, required this.img, required this.title,
  });
  final Color color;
  final String img;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 48,
          backgroundColor: color,
          child: CircleAvatar(
            radius: 45,
            backgroundColor: kwhite,
            child: CircleAvatar(
              radius: 40,
              backgroundColor: color,
              child: Image(image: NetworkImage(img, scale: 2)),
            ),
          ),
        ),
        Text(title,style: const TextStyle(fontWeight: FontWeight.bold),)
      ],
    );
  }
}
