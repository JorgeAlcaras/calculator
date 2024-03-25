import 'package:calculator/keyboard/keyboard2.dart';
import 'package:calculator/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;
    final sizeHeight = MediaQuery.of(context).size.height;
    final size = MediaQuery.of(context).size;
    final sizeHeightAppBar = AppBar().preferredSize.height;
    [1, 2, 3, 4].map((number) => Text(number.toString()));

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.calculate),
        title: Text('$size'),
      ),
      body: Center(
        child: Column(children: [
          Container(
            color: Colors.grey[300],
            height: 1.2,
            width: double.infinity,
          ),
          Results(),
          KeyboardSecond(),
        ]),
      ),
    );
  }
}
