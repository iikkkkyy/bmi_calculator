import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double height;
  final double weight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('결과'),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '정상',
              style: TextStyle(fontSize: 50,color: Colors.blue),
            ),
            Icon(
              Icons.sentiment_satisfied_alt,
              size: 100,
              color: Colors.greenAccent,
            )
          ],
        ),
      ),
    );
  }

  const ResultScreen({
    Key? key,
    required this.height,
    required this.weight,
  });
}
