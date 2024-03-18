class PostfixEvaluator {
  String evaluate(String postfixExpression) {
    List<double> stack = <double>[];

    double applyOperator(double operand2, double operand1, String operator) {
      switch (operator) {
        case '+':
          return operand1 + operand2;
        case '-':
          return operand1 - operand2;
        case '*':
          return operand1 * operand2;
        case '/':
          return operand1 / operand2;
        default:
          throw Exception('Operador inválido: $operator');
      }
    }

    for (var character in postfixExpression.split(' ')) {
      if (character == ' ') continue;

      if (!isOperator(character)) {
        stack.add(double.parse(character));
      } else {
        double operand2 = stack.removeLast();
        double operand1 = stack.removeLast();
        double result = applyOperator(operand2, operand1, character);
        stack.add(result);
      }
    }

    if (stack.length != 1) {
      throw Exception('Expresión postfix no válida');
    }

    String result = stack.first.toStringAsFixed(5);
    print('result: $result');

    return 'El resultado es: ';
  }

  isOperator(String character) {
    return character == '+' ||
        character == '-' ||
        character == '*' ||
        character == '/' ||
        character == '^';
  }
}
