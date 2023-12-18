import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double height;
  final double weight;

  String _calcBmi(double bmi) {
    String result = '저체중';
    if (bmi >= 35) {
      result = '고도 비만';
    } else if (bmi >= 30) {
      result = '2단계 비만';
    } else if (bmi >= 25) {
      result = '1단계 비만';
    } else if (bmi >= 23) {
      result = '과체중';
    } else if (bmi >= 18.5) {
      result = '정상';
    }
    return result;
  }

  Widget _buildIcon(double bmi) {
    Icon icon = const Icon(
      Icons.sentiment_satisfied_alt,
      size: 100,
      color: Colors.greenAccent,
    );
    if (bmi >= 23) {
      icon = const Icon(
        Icons.sentiment_very_dissatisfied,
        size: 100,
        color: Colors.red,
      );
    } else if (bmi >= 18.5) {
      icon = const Icon(
        Icons.sentiment_satisfied_alt,
        size: 100,
        color: Colors.greenAccent,
      );
    }
    return icon;
  }

  @override
  Widget build(BuildContext context) {
    final bmi = weight / ((height / 100) * (height / 100));
    String result = '정상';

    return Scaffold(
      appBar: AppBar(
        title: const Text('결과'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _calcBmi(bmi),
              style: const TextStyle(fontSize: 50, color: Colors.blue),
            ),
            _buildIcon(bmi),
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
