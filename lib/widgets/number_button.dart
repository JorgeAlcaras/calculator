import 'package:calculator/bloc/calculator_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NumberButton extends StatelessWidget {
  final String number;

  NumberButton({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    final buttonWidth = (MediaQuery.of(context).size.width - 20) / 5;
    final buttonHeight = MediaQuery.of(context).size.height / 16.56;

    final calculatorBloc = BlocProvider.of<CalculatorBloc>(context);

    return Column(children: [
      Row(children: [
        ElevatedButton(
          onPressed: () => calculatorBloc.add(AddElement(number)),
          style: ElevatedButton.styleFrom(
            //backgroundColor: Colors.lightBlueAccent,
            foregroundColor: Colors.white,
            backgroundColor: Color.fromRGBO(165, 238, 160, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            minimumSize: Size(buttonWidth, buttonHeight),
            maximumSize: Size(buttonWidth, buttonHeight),
            textStyle: const TextStyle(fontSize: 15),
          ),
          child: Text(number),
        ),
        const SizedBox(width: 2.8)
      ]),
      const SizedBox(height: 3)
    ]);
  }
}
