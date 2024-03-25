import 'dart:io';

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
    try {
      double buttonWidth;
      double buttonHeight;
      if (Platform.isAndroid || Platform.isIOS) {
        buttonWidth = (MediaQuery.of(context).size.width - 18) / 5;
        buttonHeight = (MediaQuery.of(context).size.height - 75) * (8 / 122);
      } else if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
        buttonWidth = (MediaQuery.of(context).size.width + 22) / 5;
        buttonHeight = (MediaQuery.of(context).size.height - 75) * (4 / 51);
      } else {
        buttonWidth = (MediaQuery.of(context).size.width - 18) / 5;
        buttonHeight = (MediaQuery.of(context).size.height - 75) * (4 / 51);
      }

      final calculatorBloc = BlocProvider.of<CalculatorBloc>(context);
      return Expanded(
          child: ElevatedButton(
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
        child: Text(label.toString()),
      ));
    } catch (e) {
      final double buttonWidth = ((MediaQuery.of(context).size.width - 18) / 5);
      final buttonHeight =
          ((MediaQuery.of(context).size.height - 75) * 0.5) * (1 / 7);

      final calculatorBloc = BlocProvider.of<CalculatorBloc>(context);
      return Expanded(
          child: ElevatedButton(
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
          } else if (function == 'Function') {
            // add element
            calculatorBloc.add(AddElement(action));
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
        child: Text(label.toString()),
      ));
    }
  }
}
