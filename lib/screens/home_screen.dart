import 'package:calculator/controller/calculation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var style = const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20.0,
    );
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
                    GestureDetector(
                      onTap: () {
                        value.setValue(number: '1');
                      },
                      child: Container(
                        height: 70,
                        width: 100,
                        color: Colors.grey,
                        child: Center(
                            child: Text(
                          '1',
                          style: style,
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        value.setValue(number: '2');
                      },
                      child: Container(
                        height: 70,
                        width: 100,
                        color: Colors.grey,
                        child: Center(
                            child: Text(
                          '2',
                          style: style,
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        value.setValue(number: '3');
                      },
                      child: Container(
                        height: 70,
                        width: 100,
                        color: Colors.grey,
                        child: Center(
                            child: Text(
                          '3',
                          style: style,
                        )),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        value.setValue(number: '4');
                      },
                      child: Container(
                        height: 70,
                        width: 100,
                        color: Colors.grey,
                        child: Center(
                            child: Text(
                          '4',
                          style: style,
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        value.setValue(number: '5');
                      },
                      child: Container(
                        height: 70,
                        width: 100,
                        color: Colors.grey,
                        child: Center(
                            child: Text(
                          '5',
                          style: style,
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        value.setValue(number: '6');
                      },
                      child: Container(
                        height: 70,
                        width: 100,
                        color: Colors.grey,
                        child: Center(
                            child: Text(
                          '6',
                          style: style,
                        )),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        value.setValue(number: '7');
                      },
                      child: Container(
                        height: 70,
                        width: 100,
                        color: Colors.grey,
                        child: Center(
                          child: Text(
                            '7',
                            style: style,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        value.setValue(number: '8');
                      },
                      child: Container(
                        height: 70,
                        width: 100,
                        color: Colors.grey,
                        child: Center(
                            child: Text(
                          '8',
                          style: style,
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        value.setValue(number: '9');
                      },
                      child: Container(
                        height: 70,
                        width: 100,
                        color: Colors.grey,
                        child: Center(
                            child: Text(
                          '9',
                          style: style,
                        )),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        value.setValue(number: '3');
                      },
                      child: Container(
                        height: 70,
                        width: 100,
                        color: Colors.grey,
                        child: Center(
                            child: Text(
                          '0',
                          style: style,
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        value.setSum(summation: Sum.multiplication);
                      },
                      child: Container(
                        height: 70,
                        width: 100,
                        color: Colors.grey,
                        child: Center(
                            child: Text(
                          '*',
                          style: style,
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        value.setSum(summation: Sum.addition);
                      },
                      child: Container(
                        height: 70,
                        width: 100,
                        color: Colors.grey,
                        child: Center(
                            child: Text(
                          '+',
                          style: style,
                        )),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        value.setSum(summation: Sum.division);
                      },
                      child: Container(
                        height: 70,
                        width: 100,
                        color: Colors.grey,
                        child: Center(
                            child: Text(
                          "/",
                          style: style,
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        value.setSum(summation: Sum.subtraction);
                      },
                      child: Container(
                        height: 70,
                        width: 100,
                        color: Colors.grey,
                        child: Center(
                            child: Text(
                          '-',
                          style: style,
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        value.delete();
                      },
                      child: Container(
                        height: 70,
                        width: 100,
                        color: Colors.grey,
                        child: Center(
                            child: Text(
                          'DEL',
                          style: style,
                        )),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    value.result(number: value.value.value);
                  },
                  child: Container(
                    height: 70,
                    width: 100,
                    color: Colors.grey,
                    child: Center(
                        child: Text(
                      '=',
                      style: style,
                    )),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
      backgroundColor: Colors.black,
    );
  }
}
