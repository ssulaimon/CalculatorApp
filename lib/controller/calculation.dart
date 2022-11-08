import 'package:get/get.dart';

// all operation enum
enum Sum {
  addition,
  subtraction,
  division,
  multiplication,
  delete,
  equal,
}

class CalculatorFunction extends GetxController {
  final firstNumber = Rxn<double>();
  final secondNumber = Rxn<double>();
  final value = ''.obs;
  final sum = Rxn<Sum>();
  final emptyValue = Rxn<String>();

  //setting first value of the operation

  void setValue({required String number}) {
    if (value == '') {
      value(number);
    } else {
      value(value + number);
    }
  }
  //setting the operation type

  void setSum({required Sum summation}) {
    // ignore: deprecated_member_use
    if (value.value == '') {
      Get.snackbar('Empty', 'Please add number');
    } else {
      firstNumber(double.parse(
        value.value,
      ));
      value('');
      print(value);
      sum(summation);
    }
  }

//set second number of operation and getting result
  void result({required String number}) {
    // ignore: deprecated_member_use
    if (firstNumber == '') {
      Get.snackbar('Empty', 'Please add first number');
    } else {
      secondNumber(double.parse(value.value));

      value(null);

      if (sum.value! == Sum.addition) {
        double result = firstNumber.value! + secondNumber.value!;
        value(result.toString());
      } else if (sum.value! == Sum.division) {
        double result = firstNumber.value! / secondNumber.value!;
        value(result.toString());
      } else if (sum.value! == Sum.multiplication) {
        double result = firstNumber.value! * secondNumber.value!;
        value(result.toString());
      } else if (sum.value! == Sum.subtraction) {
        double result = firstNumber.value! - secondNumber.value!;
        value(result.toString());
      }
    }
  }
  //set numbers to zero

  void delete() {
    value('');
    firstNumber(null);
    secondNumber(null);
  }
}
