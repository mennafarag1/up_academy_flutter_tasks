
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final int height;
  final int weight;
  final int age;

  ResultPage({required this.height, required this.weight, required this.age});

  @override
  Widget build(BuildContext context) {
    double bmi = weight / ((height / 100) * (height / 100));

    String resultText;
    if (bmi < 18.5) {
      resultText = "Underweight";
    } else if (bmi >= 18.5 && bmi < 24.9) {
      resultText = "Normal Weight";
    } else if (bmi >= 25 && bmi < 29.9) {
      resultText = "Overweight";
    } else {
      resultText = "Obese";
    }

    return Scaffold(
      appBar: AppBar(
        
        title: Text("BMI Result"),
        centerTitle: true,
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Your BMI is",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              bmi.toStringAsFixed(1),
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              resultText,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

