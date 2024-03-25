import 'package:calculator/button_widget/button.dart';
import 'package:flutter/material.dart';

class ClearButton extends Button {
  const ClearButton({
    Key? key,
    required Color color,
  }) : super(
          action: '',
          function: 'Clear',
          fontSize: 18,
          color: color,
          label: 'C',
        );

  @override
  Widget build(BuildContext context) {
    return Button(
      action: '',
      function: 'Clear',
      fontSize: 15,
      color: color,
      label: 'AC',
    );
  }
}
