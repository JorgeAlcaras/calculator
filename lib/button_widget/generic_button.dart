import 'package:calculator/widgets/button_widget/button.dart';
import 'package:flutter/material.dart';

class GenericButton extends Button {
  const GenericButton({
    super.key,
    required Color color,
    required String label,
  }) : super(
          action: '',
          function: '',
          fontSize: 10,
          color: color,
          label: label,
        );

  @override
  Widget build(BuildContext context) {
    return Button(
      action: label,
      function: 'Generic',
      fontSize: 18,
      color: color,
      label: label,
    );
  }
}
