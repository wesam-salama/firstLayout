import 'package:flutter/material.dart';

class Page5 extends StatelessWidget {
  const Page5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('Page 5'),
      ),
      body: Center(child: Text('Page 5'),),
    );
  }
}
