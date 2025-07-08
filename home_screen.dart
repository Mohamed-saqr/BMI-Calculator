import 'package:bmi_app/screen/result_screen.dart';
import 'package:bmi_app/widgets/custam_app_bar.dart';
import 'package:bmi_app/widgets/gender_container.dart';
import 'package:bmi_app/widgets/wight_age_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMale = false;
  int height = 100;
  int weight = 20;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C2135),

      appBar: CustamAppBar(
        elevation: 10,
        backgroundColor: const Color(0xff24263B),
        centerTitle: true,
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),

      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ResultScreen(
                weight: weight,
                height: height.toDouble(),
                age: age,
              ),
            ),
          );
        },
        child: Container(
          alignment: Alignment.center,
          height: 100,
          color: const Color(0xffE83D67),
          child: const Text(
            "Calculate",
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
              color: Color(0xffffffff),
            ),
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 26.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Gender Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(9),
                      child: GenderContainer(
                        isActive: isMale,
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        title: "Male",
                        svgIcon: "assets/images/male_icon.svg",
                      ),
                    ),
                  ),
                  const SizedBox(width: 9),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(9),
                      child: GenderContainer(
                        isActive: !isMale,
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        title: "Female",
                        svgIcon: "assets/images/female_icon.svg",
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // Height Container
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xff333244),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),

                  child: Column(
                    children: [
                      const Text(
                        "Height",
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: height.toString(),
                              style: const TextStyle(
                                fontSize: 45,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffffffff),
                              ),
                            ),
                            const TextSpan(
                              text: " cm",
                              style: TextStyle(
                                fontSize: 25,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Slider(
                        min: 80,
                        max: 220,
                        activeColor: const Color(0xffE83D67),
                        thumbColor: const Color(0xffE83D67),
                        value: height.toDouble(),
                        onChanged: (v) {
                          setState(() {
                            height = v.toInt();
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // Weight & Age Row
              Row(
                children: [
                  Expanded(
                    child: WightAgeContainer(
                      title: "Weight",
                      value: weight.toString(),
                      addOnPressed: () {
                        setState(() {
                          weight++;
                        });
                      },
                      removeOnPressed: () {
                        if (weight > 0) {
                          setState(() {
                            weight--;
                          });
                        }
                      },
                    ),
                  ),
                  const SizedBox(width: 9),
                  Expanded(
                    child: WightAgeContainer(
                      title: "Age",
                      value: age.toString(),
                      addOnPressed: () {
                        setState(() {
                          age++;
                        });
                      },
                      removeOnPressed: () {
                        if (age > 0) {
                          setState(() {
                            age--;
                          });
                        }
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
