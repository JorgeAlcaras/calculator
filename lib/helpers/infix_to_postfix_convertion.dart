class InfixToPostfix {
  String convert(String infixExpression) {
    var postfixExpression = '';
    var stack = <String>[];

    var precedence = {
      '+': 1,
      '-': 1,
      '*': 2,
      '/': 2,
      '^': 3,
    };

    int getPrecedence(String operator) {
      return precedence[operator] ?? 0;
    }

    bool isOperator(String character) {
      return precedence.keys.contains(character);
    }

    bool isParenthesis(String character) {
      return character == '(' || character == ')';
    }

    bool isSpace(String character) {
      return character == ' ';
    }

    for (var character in infixExpression.split('')) {
      if (isSpace(character)) continue;

      if (!isOperator(character) && !isParenthesis(character)) {
        postfixExpression += character + ' ';
      } else if (character == '(') {
        stack.add(character);
      } else if (character == ')') {
        while (stack.isNotEmpty && stack.last != '(') {
          postfixExpression += stack.removeLast();
        }
        stack.removeLast();
      } else {
        while (stack.isNotEmpty &&
            getPrecedence(stack.last) >= getPrecedence(character)) {
          postfixExpression += stack.removeLast();
        }
        stack.add(character);
      }
    }

    while (stack.isNotEmpty) {
      postfixExpression += stack.removeLast();
    }

    return postfixExpression;
  }
}
