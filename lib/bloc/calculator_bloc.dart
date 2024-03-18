import 'package:bloc/bloc.dart';
import 'package:calculator/bloc/calculator_state.dart';
import 'package:calculator/helperstry/evaluate_postfix.dart';
import 'package:calculator/helperstry/infix_to_postfix_convertion.dart';
import 'package:meta/meta.dart';

part 'calculator_event.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc() : super(CalculatorState()) {
    on<AddElement>((event, emit) {
      emit(state.copyWith(
        infixExpression: (state.infixExpression == '0')
            ? event.number
            : state.infixExpression + event.number.toString(),
      ));
    });

    on<Calculate>((event, emit) {
      emit(state.copyWith(
          postfixExpression: InfixToPostfix().convert(state.infixExpression),
          postfixResult: PostfixEvaluator()
              .evaluate(InfixToPostfix().convert(state.infixExpression))
              .toString()));
    });

    on<Clear>((event, emit) {
      emit(state.copyWith(
        infixExpression: '0',
        postfixExpression: '0',
        postfixResult: '0',
      ));
    });

    on<DeleteElement>((event, emit) {
      if (state.infixExpression.length > 1 && state.postfixExpression == '0') {
        emit(state.copyWith(
          infixExpression: state.infixExpression
              .substring(0, state.infixExpression.length - 1),
        ));
      } else {
        emit(state.copyWith(
          infixExpression: '0',
        ));
      }
    });
  }
}
