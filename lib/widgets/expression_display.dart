import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ExpressionDisplay extends StatelessWidget {
  String print = '';

  ExpressionDisplay({super.key, required this.print});

  @override
  Widget build(BuildContext context) {
    final double sizeHeight =
        (MediaQuery.of(context).size.height - 75) * (2 / 13);
    final double sizeWidth = MediaQuery.of(context).size.width;
    final padding = MediaQuery.of(context).size.width / 56.5;

    final fontSize = sizeWidth / 20;

    return Container(
      padding: EdgeInsets.all(3),
      height: sizeHeight,
      alignment: Alignment.centerRight,
      child: Column(
        children: [
          TextFieldTapRegion(
            child: AutoSizeText(
              '$print',
              style: TextStyle(fontSize: 40, height: 0.9),
              maxLines: 2,
              minFontSize: 35,
              maxFontSize: 40,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
