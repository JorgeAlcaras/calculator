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
    };

    int getPrecedence(String operator) {
      return precedence[operator] ?? 0;
    }

    bool isOperator(String character) {
      return precedence.keys.contains(character);
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

    isNumberElement(String character) {
      return isDigit(character) || isPoint(character);
    }

    int pointCount = 0;
    int i = 0;

    for (String character in infixExpression.split('')) {
      print(
          'infixExpression: $infixExpression     i: $i     character: $character    pointCounter: $pointCount     length: ${infixExpression.length}'); //TODO: remove           infixExpression
      // print('postfixExpression: $postfixExpression'); //TODO: remove           infixExpression
      //if (isSpace(character)) continue;
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
      } else if (character == '(') {
        stack.add(character);
      } else if (character == ')') {
        while (stack.isNotEmpty && stack.last != '(') {
          postfixExpression += stack.removeLast();
        }
        pointCount = 0;
        stack.removeLast();
      } else {
        while (stack.isNotEmpty &&
            getPrecedence(stack.last) >= getPrecedence(character)) {
          postfixExpression += stack.removeLast();
        }
        pointCount = 0;
        stack.add(character);
      }
      print('postfixExpression: $postfixExpression    last'); //TODO: remove
      i++;
    }

    while (stack.isNotEmpty) {
      postfixExpression += stack.removeLast();
    }

    return postfixExpression.toString().trim();
  }
}
