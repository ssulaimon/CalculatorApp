import 'package:calculator/controller/calculation.dart';
import 'package:calculator/screens/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final calculationController = Get.put(
      CalculatorFunction(),
    );

    return Scaffold(
      body: SafeArea(
        child: GetX<CalculatorFunction>(builder: (value) {
          return Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: value.value.value == ''
                      ? const Text(
                          '0',
                          style: TextStyle(fontSize: 40),
                        )
                      : SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Text(
                            value.value.value,
                            style: const TextStyle(
                              fontSize: 40,
                            ),
                          ),
                        ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ContanierButton(
                        function: () => value.setValue(number: '1'),
                        buttonValue: '1'),
                    ContanierButton(
                        function: () => value.setValue(number: '2'),
                        buttonValue: '2'),
                    ContanierButton(
                        function: () => value.setValue(number: '3'),
                        buttonValue: '3'),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ContanierButton(
                        function: () => value.setValue(number: '4'),
                        buttonValue: '4'),
                    ContanierButton(
                        function: () => value.setValue(number: '5'),
                        buttonValue: '5'),
                    ContanierButton(
                        function: () => value.setValue(number: '6'),
                        buttonValue: '6'),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ContanierButton(
                        function: () => value.setValue(number: '7'),
                        buttonValue: '7'),
                    ContanierButton(
                        function: () => value.setValue(number: '8'),
                        buttonValue: '8'),
                    ContanierButton(
                        function: () => value.setValue(number: '9'),
                        buttonValue: '9'),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ContanierButton(
                      function: () => value.setValue(
                        number: '0',
                      ),
                      buttonValue: '0',
                    ),
                    ContanierButton(
                        function: () => value.setSum(
                              summation: Sum.multiplication,
                            ),
                        buttonValue: '*'),
                    ContanierButton(
                        function: () => value.setSum(
                              summation: Sum.addition,
                            ),
                        buttonValue: '+'),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ContanierButton(
                        function: () => value.setSum(
                              summation: Sum.division,
                            ),
                        buttonValue: '/'),
                    ContanierButton(
                        function: () => value.setSum(
                              summation: Sum.subtraction,
                            ),
                        buttonValue: '-'),
                    ContanierButton(
                      function: () => value.delete(),
                      buttonValue: 'DEL',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                ContanierButton(
                  function: () => value.result(
                    number: value.value.value,
                  ),
                  buttonValue: '=',
                ),
              ],
            ),
          );
        }),
      ),
      backgroundColor: Colors.white,
    );
  }
}
