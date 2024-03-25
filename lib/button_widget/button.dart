import 'package:calculator/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Button extends StatelessWidget {
  final String action;
  final String function;
  final double fontSize;
  final Color color;
  final String label;

  const Button(
      {super.key,
      required this.action,
      required this.function,
      required this.fontSize,
      required this.color,
      required this.label});

  @override
  Widget build(BuildContext context) {
    final buttonWidth = MediaQuery.of(context).size.width / 6.61;
    final buttonHeight = MediaQuery.of(context).size.height / 16.56;

    final calculatorBloc = BlocProvider.of<CalculatorBloc>(context);
    String label = '';
    return ElevatedButton(
        onPressed: () {
          if (function == 'Delete') {
            // delete element
            calculatorBloc.add(DeleteElement());
          } else if (function == 'Equal') {
            // calculate
            calculatorBloc.add(Calculate());
          } else if (function == 'Clear') {
            // clear all
            calculatorBloc.add(Clear());
          } else {
            // add element
            calculatorBloc.add(AddElement(action));
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          minimumSize: Size(buttonWidth, buttonHeight),
          maximumSize: Size(buttonWidth, buttonHeight),
          textStyle: TextStyle(fontSize: fontSize),
        ),
        child: Text(label));
  }
}
