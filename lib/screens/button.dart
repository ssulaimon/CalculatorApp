import 'package:flutter/material.dart';

class ContanierButton extends StatelessWidget {
  String buttonValue;
  Function function;
  ContanierButton(
      {required this.function, required this.buttonValue, super.key});

  @override
  Widget build(BuildContext context) {
    var style = const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20.0,
    );
    return GestureDetector(
      onTap: () {
        function();
      },
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xFF1A73E8),
            borderRadius: BorderRadius.circular(10)),
        height: 70,
        width: 100,
        child: Center(
          child: Text(
            buttonValue,
            style: style,
          ),
        ),
      ),
    );
  }
}
