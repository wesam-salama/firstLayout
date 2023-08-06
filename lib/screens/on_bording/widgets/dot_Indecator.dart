import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key, required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 10,
      width: isActive ? 38 : 10,
      decoration: BoxDecoration(
        color: isActive ? Color(0xff5BE07A) : Color(0xffD4D4D4),
        borderRadius: BorderRadius.circular(4)
      ),
    );
  }
}
