import 'package:calculator/button_widget/button.dart';
import 'package:flutter/material.dart';

class EqualButton1 extends Button {
  const EqualButton1({
    super.key,
    required Color color,
  }) : super(
          action: '',
          function: 'Equal',
          fontSize: 18,
          color: color,
          label: '=',
        );

  @override
  Widget build(BuildContext context) {
    return Button(
      action: '',
      function: 'Equal',
      fontSize: 25,
      color: color,
      label: '=',
    );
  }
}
