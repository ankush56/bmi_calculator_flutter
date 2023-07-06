import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'calculator.dart';

class MainBmiPage extends StatefulWidget {
  const MainBmiPage({super.key, required this.title});

  final String title;

  @override
  State<MainBmiPage> createState() => _MainBmiPageState();
}

class _MainBmiPageState extends State<MainBmiPage> {
  Color activeCardColor = Color(0XFFFFFFFF);
  Color bottomContainerColor = Color(0XFFFFFFFF);
  double height = 1.0;
  int weight = 80;
  int age = 25;
  String gender = "male";
  double bmi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F8FA),
      appBar: AppBar(
        //backgroundColor: Colors.redAccent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Colors.redAccent,
            ],
            stops: [0.0, 0.8],
          )),
        ),
        title: const Center(child: Text('BMI Calculator')),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    gender = 'male';
                    print("Male Gender Selected");
                  },
                  child: ReusableCard(
                    cardsColor: activeCardColor,
                    childCard: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 80,
                          color: Colors.redAccent,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Male",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0XFF4E555B),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    print("Female gender selected");
                    gender = 'female';
                  },
                  child: ReusableCard(
                    cardsColor: activeCardColor,
                    childCard: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.venus,
                          size: 80,
                          color: Colors.redAccent,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Female",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0XFF4E555B),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ReusableCard(
              cardsColor: activeCardColor,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Height',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        height.toString(),
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' cm',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Slider(
                    value: height,
                    min: 0.0,
                    max: 200.0,
                    thumbColor: Colors.redAccent,
                    label: height.toString(),
                    onChanged: (double onSliderValue) {
                      setState(() {
                        onSliderValue =
                            double.parse(onSliderValue.toStringAsFixed(1));
                        height = onSliderValue;
                        print(height);
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: ReusableCard(
                    cardsColor: activeCardColor,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Weight",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: Icon(
                                FontAwesomeIcons.circlePlus,
                                color: Colors.redAccent,
                                size: 40,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              child: Icon(
                                FontAwesomeIcons.circleMinus,
                                size: 40,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
              Expanded(
                child: ReusableCard(
                    cardsColor: activeCardColor,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Age",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: Icon(
                                FontAwesomeIcons.circlePlus,
                                color: Colors.redAccent,
                                size: 40,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              child: Icon(
                                FontAwesomeIcons.circleMinus,
                                size: 40,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
            ],
          ),
          TextButton(
            onPressed: () {
              print("Calculate Button Pressed");
              Calculator calculator = Calculator(
                  height: height, gender: gender, age: age, weight: weight);
              bmi = calculator.calculateBMI();
              bmi = double.parse(bmi.toStringAsFixed(1));
              print("BMI is: $bmi");
            },
            child: Container(
              margin: EdgeInsets.only(top: 10),
              height: 100,
              decoration: BoxDecoration(
                  color: bottomContainerColor,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.9),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset:
                          Offset(0, 3), // changes the position of the shadow
                    ),
                  ]),
              width: double.infinity,
              child: Center(
                child: Text(
                  "Calculate",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
                      fontSize: 25),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.cardsColor, this.childCard});

  final Color cardsColor;
  final Widget? childCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      margin: const EdgeInsets.all(15),
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: cardsColor,
      ),
    );
  }
}
