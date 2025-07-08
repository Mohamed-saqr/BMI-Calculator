import 'package:bmi_app/screen/home_screen.dart';
import 'package:flutter/material.dart';

class BMIApp extends StatelessWidget {
  const BMIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false ,
      home: HomeScreen(),


    );
  }
}
