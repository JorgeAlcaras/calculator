import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ExpressionDisplay extends StatelessWidget {
  String print = '';

  ExpressionDisplay({super.key, required this.print});

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      height: sizeHeight / 8.25,
      alignment: Alignment.centerRight,
      child: Column(
        children: [
          TextFieldTapRegion(
            child: AutoSizeText(
              '$print',
              style: TextStyle(fontSize: sizeHeight / 20.65, height: 0.9),
              maxLines: 2,
              minFontSize: 20,
              maxFontSize: 40,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
