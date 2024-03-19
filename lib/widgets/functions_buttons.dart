import 'package:calculator/bloc/calculator_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FunctionsButton extends StatelessWidget {
  String action = '';
  String expression = '';

  FunctionsButton({super.key, required this.action});

  @override
  Widget build(BuildContext context) {
    final buttonWidth = (MediaQuery.of(context).size.width - 20) / 5;
    final buttonHeight = MediaQuery.of(context).size.height / 16.56;

    final calculatorBloc = BlocProvider.of<CalculatorBloc>(context);

    return Column(children: [
      Row(children: [
        ElevatedButton(
          onPressed: () {
            calculatorBloc.add(AddElement(action));
          },
          style: ElevatedButton.styleFrom(
            //backgroundColor: Colors.blueAccent,
            foregroundColor: Colors.white,
            backgroundColor: Color.fromRGBO(196, 218, 250, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            minimumSize: Size(buttonWidth, buttonHeight),
            maximumSize: Size(buttonWidth, buttonHeight),
            textStyle:
                const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
          child: Text(action),
        ),
        const SizedBox(width: 2.8)
      ]),
      const SizedBox(height: 3)
    ]);
  }
}
