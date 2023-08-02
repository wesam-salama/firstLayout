import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContentSection extends StatelessWidget {
  const ContentSection({super.key, required this.image, required this.title, required this.description});

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          image,
          width: 343,
          height: 278,
        ),
        SizedBox(
          height: 92,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 57),
          child: Text(
            description,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
