class Calculator {
  Calculator(
      {required this.height,
      required this.gender,
      required this.age,
      required this.weight});

  double height;
  int weight;
  int age;
  String gender;

  double calculateBMI() {
    double bmi = weight / (height * height) * 703;
    return bmi;
  }
}
