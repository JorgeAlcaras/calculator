import 'package:calculator/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomButton extends StatelessWidget {
  String print = '';
  String expression = '';
  int fontSize = 0;
  Color color = Colors.blueAccent;

  CustomButton({
    super.key,
    required this.print,
    required this.fontSize,
    required this.expression,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final buttonWidth = (MediaQuery.of(context).size.width - 20) / 5;
    final buttonHeight = MediaQuery.of(context).size.height / 16.56;

    final calculatorBloc = BlocProvider.of<CalculatorBloc>(context);

    return Column(children: [
      Row(children: [
        ElevatedButton(
          onPressed: () {
            calculatorBloc.add(AddElement(expression));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            minimumSize: Size(buttonWidth, buttonHeight),
            maximumSize: Size(buttonWidth, buttonHeight),
            textStyle: TextStyle(fontSize: fontSize.toDouble()),
          ),
          child: Text(print),
        ),
        const SizedBox(width: 2.8)
      ]),
      const SizedBox(height: 3)
    ]);
  }
}
