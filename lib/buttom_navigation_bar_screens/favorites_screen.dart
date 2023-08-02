import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blueAccent,
      child: Center(
        child: Text(
          'Favorites Screen',
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
