class CalculatorState {
  final String infixExpression;
  final String postfixExpression;
  final String postfixResult;

  CalculatorState({
    this.infixExpression = '0',
    this.postfixExpression = '0',
    this.postfixResult = '0',
  });

  CalculatorState copyWith(
      {String? infixExpression,
      String postfixExpression = '0',
      String? postfixResult}) {
    return CalculatorState(
      infixExpression: infixExpression ?? this.infixExpression,
      postfixExpression: postfixExpression ?? this.postfixExpression,
      postfixResult: postfixResult ?? this.postfixResult,
    );
  }
}
