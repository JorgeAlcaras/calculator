class InfixToPostfix {
  String convert(String infixExpression) {
    String postfixExpression = '';
    List<String> stack = [];

    Map<String, int> precedence = {
      '+': 1,
      '-': 1,
      '*': 2,
      '/': 2,
      '^': 3,
      'sqrt': 3,
      'sen': 4,
      'cos': 4,
      'tan': 4,
      'log': 4,
      'ln': 4,
      'asen': 4,
      'acos': 4,
      'atan': 4,
      'exp': 4,
    };

    int getPrecedence(String operator) {
      return precedence[operator] ?? 0;
    }

    bool isPoint(String character) {
      return character == '.';
    }

    bool isDigit(String character) {
      try {
        double.parse(character);
        return true;
      } catch (e) {
        return false;
      }
    }

    bool isAlphabet(String character) {
      return character.contains(RegExp(r'[a-zA-Z]'));
    }

    isNumberElement(String character) {
      return isDigit(character) || isPoint(character);
    }

    int pointCount = 0;
    int i = 0;
    String function = '';

    for (String character in infixExpression.split('')) {
      print(
          'infixExpression: $infixExpression     i: $i     character: $character    pointCounter: $pointCount     length: ${infixExpression.length}'); //TODO: remove           infixExpression
      // print('postfixExpression: $postfixExpression'); //TODO: remove           infixExpression
      if (isNumberElement(character)) {
        if (i + 1 < infixExpression.length) {
          if (isNumberElement(infixExpression[i + 1])) {
            if (character == '.' && pointCount < 1) {
              postfixExpression += character;
              pointCount++;
            } else if (character == '.' && pointCount >= 1) {
              postfixExpression = 'Syntax Error';
              break;
            } else if (isDigit(character)) {
              postfixExpression += '$character';
              print('1'); //TODO: remove
            } else {
              postfixExpression += '$character ';
              print('1.1'); //TODO: remove
            }
          } else {
            postfixExpression += '$character ';
            print('2'); //TODO: remove
          }
        } else {
          postfixExpression += '$character ';
          print('3'); //TODO: remove
        }
      } else if (isAlphabet(character)) {
        if (i + 1 < infixExpression.length) {
          if (isAlphabet(infixExpression[i + 1])) {
            function += character;
          } else {
            function += character;
            stack.add(function);
            function = '';
          }
        }
      } else if (character == '(') {
        stack.add(character);
      } else if (character == ')') {
        while (stack.isNotEmpty && stack.last != '(') {
          postfixExpression += stack.removeLast() + ' ';
          print('Method: 1   stack: $stack');
        }
        pointCount = 0;
        stack.removeLast();
      } else {
        while (stack.isNotEmpty &&
            getPrecedence(stack.last) >= getPrecedence(character)) {
          postfixExpression += stack.removeLast() + ' ';

          print('Method: 2  stack: $stack');
        }
        pointCount = 0;
        stack.add(character);
      }
      print('postfixExpression: $postfixExpression    last'); //TODO: remove

      i++;
    }

    while (stack.isNotEmpty) {
      postfixExpression += stack.removeLast() + ' ';

      print('Method: 3 stack: $stack');
    }

    return postfixExpression.toString().trim();
  }
}
