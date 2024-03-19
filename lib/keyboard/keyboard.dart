import 'package:calculator/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              CustomButton(
                  print: '10^x',
                  fontSize: 13,
                  expression: '10^',
                  color: Color.fromRGBO(196, 218, 250, 1)),
              CustomButton(
                  print: 'e^x',
                  fontSize: 14,
                  expression: 'exp',
                  color: Color.fromRGBO(196, 218, 250, 1)),
              FunctionsButton(action: 'asen'),
              FunctionsButton(action: 'acos'),
              FunctionsButton(action: 'atan'),
            ],
          ),
          Row(
            children: [
              FunctionsButton(action: 'log'),
              FunctionsButton(action: 'ln'),
              FunctionsButton(action: 'sen'),
              FunctionsButton(action: 'cos'),
              FunctionsButton(action: 'tan'),
            ],
          ),
          Row(
            children: [
              CustomButton(
                  print: '√',
                  fontSize: 14,
                  expression: 'sqrt',
                  color: Color.fromRGBO(196, 218, 250, 1)),
              OperatorButton(action: '('),
              OperatorButton(action: ')'),
              OperatorButton(action: '^'),
              CustomButton(
                  print: 'x^2',
                  fontSize: 14,
                  expression: '^(2)',
                  color: Color.fromRGBO(196, 218, 250, 1)),
            ],
          ),
          Row(
            children: [
              NumberButton(number: '7'),
              NumberButton(number: '8'),
              NumberButton(number: '9'),
              DeleteButton(),
              ClearButton(),
            ],
          ),
          Row(
            children: [
              NumberButton(number: '4'),
              NumberButton(number: '5'),
              NumberButton(number: '6'),
              OperatorButton(action: '*'),
              OperatorButton(action: '/'),
            ],
          ),
          Row(
            children: [
              NumberButton(number: '1'),
              NumberButton(number: '2'),
              NumberButton(number: '3'),
              OperatorButton(action: '+'),
              OperatorButton(action: '-'),
            ],
          ),
          Row(
            children: [
              NumberButton(number: '0'),
              NumberButton(number: '00'),
              CustomButton(
                  print: 'π',
                  fontSize: 18,
                  expression: '3.14159265359',
                  color: Color.fromRGBO(165, 238, 160, 1)),
              OperatorButton(action: '.'),
              EqualButton(),
            ],
          ),
        ],
      ),
    );
  }
}
