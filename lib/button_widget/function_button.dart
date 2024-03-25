import 'package:calculator/widgets/button_widget/button.dart';
import 'package:flutter/material.dart';

class FunctionButton extends Button {
  const FunctionButton({
    Key? key,
    required action,
    required Color color,
    required String label,
  }) : super(
          action: '',
          function: 'function',
          fontSize: 18,
          color: color,
          label: label,
        );

  @override
  Widget build(BuildContext context) {
    return Button(
      action: action,
      function: 'function',
      fontSize: 18,
      color: color,
      label: label,
    );
  }
}
