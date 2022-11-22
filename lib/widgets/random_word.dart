import 'dart:math';

import 'package:flutter/material.dart';

class RandomWordWidget extends StatefulWidget {
  const RandomWordWidget({super.key});

  @override
  State<RandomWordWidget> createState() => _RandomWordWidgetState();
}

class _RandomWordWidgetState extends State<RandomWordWidget> {
  final List<String> _words = [
      "Lapiz",
      "Pokemon",
      "Mouse",
      "Galleta",
      "Teclado"
    ];
  late String _word = _words[0];
  final Random _random = Random();

  void _getRandomWord(){
    setState(() {
      _word = _words[_random.nextInt(_words.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          _word,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: _getRandomWord,
          child: const Text("Press me"),
        ),
      ],
    );
  }
}
