import 'package:calculator/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeleteButton extends StatelessWidget {
  String action = '';
  String expression = '';

  DeleteButton({super.key});

  @override
  Widget build(BuildContext context) {
    final buttonWidth = (MediaQuery.of(context).size.width - 20) / 5;
    final buttonHeight = MediaQuery.of(context).size.height / 16.56;

    final calculatorBloc = BlocProvider.of<CalculatorBloc>(context);

    return Column(children: [
      Row(children: [
        ElevatedButton(
          onPressed: () {
            calculatorBloc.add(DeleteElement());
          },
          style: ElevatedButton.styleFrom(
            //backgroundColor: Colors.deepOrangeAccent,
            foregroundColor: Colors.white,
            backgroundColor: Color.fromRGBO(253, 180, 191, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            minimumSize: Size(buttonWidth, buttonHeight),
            maximumSize: Size(buttonWidth, buttonHeight),
            textStyle: const TextStyle(fontSize: 15),
          ),
          child: const Text('DEL'),
        ),
        const SizedBox(width: 2.8)
      ]),
      const SizedBox(height: 3)
    ]);
  }
}
