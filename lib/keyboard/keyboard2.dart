import 'package:calculator/button_widget/button_widget.dart';
import 'package:flutter/material.dart';

class KeyboardSecond extends StatelessWidget {
  const KeyboardSecond({super.key});

  @override
  Widget build(BuildContext context) {
    const Color deleteColor = Color.fromRGBO(253, 180, 191, 1);
    const Color clearColor = Color.fromRGBO(229, 125, 144, 1);
    const Color numberColor = Color.fromRGBO(165, 238, 160, 1);
    const Color operatorColor = Color.fromRGBO(196, 218, 250, 1);
    const Color equalColor = Color.fromRGBO(165, 238, 160, 1);
    const Color functionColor = Color.fromRGBO(196, 218, 250, 1);

    final double width = MediaQuery.of(context).size.width;
    final double height = (MediaQuery.of(context).size.height - 65) * 0.5;

    final double widthSeparator = 3;
    final double heightSeparator = 3;

    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const FunctionButton(
                  action: '10^', color: functionColor, label: '10^x'),
              SizedBox(width: widthSeparator),
              const FunctionButton(
                  action: 'exp(', color: functionColor, label: 'e^x'),
              SizedBox(width: widthSeparator),
              const FunctionButton(
                  action: 'asen(', color: functionColor, label: 'asen'),
              SizedBox(width: widthSeparator),
              const FunctionButton(
                  action: 'acos(', color: functionColor, label: 'acos'),
              SizedBox(width: widthSeparator),
              const FunctionButton(
                  action: 'atan(', color: functionColor, label: 'atan'),
            ],
          ),
          Row(children: [
            const FunctionButton(
                action: 'log(', color: functionColor, label: 'log'),
            SizedBox(width: widthSeparator),
            const FunctionButton(
                action: 'ln(', color: functionColor, label: 'ln'),
            SizedBox(width: widthSeparator),
            const FunctionButton(
                action: 'sen(', color: functionColor, label: 'sen'),
            SizedBox(width: widthSeparator),
            const FunctionButton(
                action: 'cos(', color: functionColor, label: 'cos'),
            SizedBox(width: widthSeparator),
            const FunctionButton(
                action: 'tan(', color: functionColor, label: 'tan'),
          ]),
          Row(children: [
            const FunctionButton(
                action: 'sqrt(', color: functionColor, label: '√'),
            SizedBox(width: widthSeparator),
            const GenericButton(color: operatorColor, label: '('),
            SizedBox(width: widthSeparator),
            const GenericButton(color: operatorColor, label: ')'),
            SizedBox(width: widthSeparator),
            const GenericButton(color: operatorColor, label: '^'),
            SizedBox(width: widthSeparator),
            const FunctionButton(
                action: '^(2)', color: functionColor, label: 'x^2'),
          ]),
          Row(children: [
            const GenericButton(color: numberColor, label: '7'),
            SizedBox(width: widthSeparator),
            const GenericButton(color: numberColor, label: '8'),
            SizedBox(width: widthSeparator),
            const GenericButton(color: numberColor, label: '9'),
            SizedBox(width: widthSeparator),
            const DeleteButton(color: deleteColor),
            SizedBox(width: widthSeparator),
            const ClearButton(color: clearColor),
          ]),
          Row(children: [
            const GenericButton(color: numberColor, label: '4'),
            SizedBox(width: widthSeparator),
            const GenericButton(color: numberColor, label: '5'),
            SizedBox(width: widthSeparator),
            const GenericButton(color: numberColor, label: '6'),
            SizedBox(width: widthSeparator),
            const GenericButton(color: operatorColor, label: '*'),
            SizedBox(width: widthSeparator),
            const GenericButton(color: operatorColor, label: '/'),
          ]),
          Row(children: [
            const GenericButton(color: numberColor, label: '1'),
            SizedBox(width: widthSeparator),
            const GenericButton(color: numberColor, label: '2'),
            SizedBox(width: widthSeparator),
            const GenericButton(color: numberColor, label: '3'),
            SizedBox(width: widthSeparator),
            const GenericButton(color: operatorColor, label: '+'),
            SizedBox(width: widthSeparator),
            const GenericButton(color: operatorColor, label: '-'),
          ]),
          Row(children: [
            const GenericButton(color: numberColor, label: '0'),
            SizedBox(width: widthSeparator),
            const GenericButton(color: numberColor, label: '00'),
            SizedBox(width: widthSeparator),
            const GenericButton(color: numberColor, label: '.'),
            SizedBox(width: widthSeparator),
            const GenericButton(color: operatorColor, label: '%'),
            SizedBox(width: widthSeparator),
            const EqualButton1(color: equalColor),
          ]),
        ]);
  }
}
