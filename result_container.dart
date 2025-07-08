import 'package:bmi_app/core/app_colors.dart';
import 'package:flutter/material.dart';

class ResultContainer extends StatelessWidget {
  final String status;
  final String description;
  final double bmi;

  const ResultContainer({
    super.key,
    required this.status,
    required this.description,
    required this.bmi,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          status,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: AppColors.greenColor,
          ),
        ),
        Text(
          bmi.toStringAsFixed(1),
          style: const TextStyle(
            fontSize: 70,
            fontWeight: FontWeight.bold,
            color: Color(0xffffffff),
          ),
        ),
        Text(
          description,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 30,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}
