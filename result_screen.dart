import 'package:bmi_app/core/app_colors.dart';
import 'package:bmi_app/widgets/custam_app_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/result_container.dart';

class ResultScreen extends StatelessWidget {
  final int weight;
  final double height;
  final int age;

  const ResultScreen({
    super.key,
    required this.weight,
    required this.height,
    required this.age,
  });

  double calculateBmi() {
    double heightInMeter = height / 100;
    return weight / (heightInMeter * heightInMeter);
  }

  String statusText(double bmi) {
    if (bmi < 18.5) return "Underweight";
    if (bmi < 24.9) return "Normal";
    if (bmi < 29.9) return "Overweight";
    return "Obesity";
  }

  String description(double bmi) {
    if (bmi < 18.5) {
      return "Your body weight is lower than normal. Consider gaining weight healthily.";
    } else if (bmi < 24.9) {
      return "You have a healthy body weight. Good job!";
    } else if (bmi < 29.9) {
      return "You are slightly overweight. Try a more active lifestyle.";
    } else {
      return "You are obese. Please consult a healthcare provider.";
    }
  }

  @override
  Widget build(BuildContext context) {
    final bmi = calculateBmi();

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CustamAppBar(
        elevation: 15,
        backgroundColor: const Color(0xff24263B),
        centerTitle: true,
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            const Text(
              "Your Result",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,


              ),
            ),

            const SizedBox(height: 40),
            ResultContainer(
              status: statusText(bmi),
              description: description(bmi),
              bmi: bmi,
            ),

            const Spacer(),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffE83D67),
                minimumSize: const Size(double.infinity,100),
              ),

              child: const Text(

                "Re-Calculate",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold
                ,color: Color(0xffffffff)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}