import 'package:calculator/keyboard/keyboard.dart';
import 'package:calculator/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;
    final sizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.calculate),
        title: Text('Calculator'),
      ),
      body: Center(
        child: Column(children: [
          Container(
            color: Colors.grey[300],
            height: 1.2,
            width: double.infinity,
          ),
          Results(),
          Container(
            height: sizeHeight / 36,
            width: double.infinity,
          ),
          Keyboard(),
        ]),
      ),
    );
  }
}
