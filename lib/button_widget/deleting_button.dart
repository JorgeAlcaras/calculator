import 'package:calculator/button_widget/button.dart';
import 'package:flutter/material.dart';

class DeleteButton extends Button {
  const DeleteButton({
    Key? key,
    required Color color,
  }) : super(
          action: '',
          function: 'Delete',
          fontSize: 18,
          color: color,
          label: '⌫',
        );

  @override
  Widget build(BuildContext context) {
    return Button(
      action: '',
      function: 'Delete',
      fontSize: 18,
      color: color,
      label: '⌫',
    );
  }
}
