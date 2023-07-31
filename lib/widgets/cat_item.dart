import 'package:flutter/material.dart';

class CatItem extends StatelessWidget {
  const CatItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  final String icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 74,
            height: 74,
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
                color: Color(0xFFF5F5F5), shape: BoxShape.circle),
            alignment: Alignment.center,
            child: Image.asset(
              icon,
              fit: BoxFit.fitWidth,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
    ;
  }
}
