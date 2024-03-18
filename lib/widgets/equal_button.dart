import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:calculator/bloc/bloc.dart';

class EqualButton extends StatefulWidget {
  EqualButton({super.key});

  @override
  State<EqualButton> createState() => _EqualButtonState();
}

class _EqualButtonState extends State<EqualButton> {
  @override
  Widget build(BuildContext context) {
    final buttonWidth = (MediaQuery.of(context).size.width - 20) / 5;
    final buttonHeight = MediaQuery.of(context).size.height / 16.56;

    final calculatorBloc = BlocProvider.of<CalculatorBloc>(context);

    return Column(children: [
      Row(children: [
        ElevatedButton(
          onPressed: () {
            calculatorBloc.add(Calculate());
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            minimumSize: Size(buttonWidth, buttonHeight),
            maximumSize: Size(buttonWidth, buttonHeight),
            textStyle: const TextStyle(fontSize: 25),
          ),
          child: Text('='),
        ),
        const SizedBox(width: 2.8)
      ]),
      const SizedBox(height: 3)
    ]);
  }
}
