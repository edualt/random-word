import 'package:flutter/material.dart';
import 'package:random_word/widgets/random_word.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            RandomWordWidget()
          ],
        ),
      ),
    );
  }
}