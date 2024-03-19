import 'dart:math';

import 'package:intl/intl.dart';

class PostfixEvaluator {
  String evaluate(String postfixExpression) {
    List<double> stack = <double>[];

    num applyOperator(double operand2, double operand1, String operator) {
      switch (operator) {
        case '+':
          return operand1 + operand2;
        case '-':
          return operand1 - operand2;
        case '*':
          return operand1 * operand2;
        case '/':
          return operand1 / operand2;
        case '^':
          return pow(operand1, operand2);
        case 'sqrt':
          return sqrt(operand2);
        case 'sen':
          return sin(toRadians(operand2));
        case 'cos':
          return cos(toRadians(operand2));
        case 'tan':
          return tan(toRadians(operand2));
        case 'log':
          return log(operand2) / log(10);
        case 'ln':
          return log(operand2);
        case 'asen':
          return asin(operand2);
        case 'acos':
          return acos(operand2);
        case 'atan':
          return atan(operand2);
        case 'exp':
          return exp(operand2);
        default:
          throw Exception('Operador inválido: $operator');
      }
    }

    for (String character in postfixExpression.split(' ')) {
      if (character == ' ') continue;

      if (!isOperator(character)) {
        stack.add(double.parse(character));
      } else {
        double operand2 = stack.removeLast();
        double operand1 = stack.isNotEmpty ? stack.removeLast() : 0;
        double result = applyOperator(operand2, operand1, character).toDouble();
        stack.add(result);
      }
      print('stack: $stack');
    }

    if (stack.length != 1) {
      throw Exception('Expresión postfix no válida');
    }

    NumberFormat result = NumberFormat('#,###.##');

    return result.format(stack.first).toString();
  }

  isOperator(String character) {
    return character == '+' ||
        character == '-' ||
        character == '*' ||
        character == '/' ||
        character == '^' ||
        character == 'sqrt' ||
        character == 'sen' ||
        character == 'cos' ||
        character == 'tan' ||
        character == 'log' ||
        character == 'ln' ||
        character == 'asen' ||
        character == 'acos' ||
        character == 'atan' ||
        character == 'exp';
  }

  double toRadians(double degrees) {
    return degrees * (pi / 180);
  }
}
