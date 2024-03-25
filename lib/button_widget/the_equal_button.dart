import 'package:calculator/widgets/button_widget/button.dart';
import 'package:flutter/material.dart';

class EqualButton extends Button {
  const EqualButton({
    super.key,
    required Color color,
  }) : super(
          action: '',
          function: 'equal',
          fontSize: 18,
          color: color,
          label: '=',
        );

  @override
  Widget build(BuildContext context) {
    return Button(
      action: '',
      function: 'equal',
      fontSize: 18,
      color: color,
      label: '=',
    );
  }
}
