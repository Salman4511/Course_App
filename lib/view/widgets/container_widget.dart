import 'package:course_app/constants/constants.dart';
import 'package:flutter/material.dart';

class SelectionContainerWidget extends StatelessWidget {
  const SelectionContainerWidget({
    super.key,
    required this.color,
    required this.title,
    required this.image,
  });
  final Color color;
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Image(
            image: NetworkImage(image, scale: 2),
          ),
          Text(
            title,
            style: const TextStyle(color: kwhite),
          ),
        ],
      ),
    );
  }
}
