import 'package:calculator/bloc/bloc.dart';
import 'package:calculator/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Results extends StatelessWidget {
  const Results({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculatorBloc, CalculatorState>(
      builder: (context, state) {
        return Container(
          child: Column(
            children: [
              ExpressionDisplay(print: state.infixExpression),
              Container(height: 1, color: Colors.grey[500]),
              ExpressionDisplay(print: state.postfixExpression),
              Container(height: 1, color: Colors.grey[500]),
              ExpressionDisplay(print: state.postfixResult),
            ],
          ),
        );
      },
    );
  }
}
