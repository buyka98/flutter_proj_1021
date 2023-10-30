import 'package:flutter/material.dart';

class MainAxisSizeTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.lightGreenAccent,
          margin: EdgeInsets.only(top: 200),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BlueBox(
                number: 1,
              ),
              BlueBox(
                number: 2,
              ),
              BlueBox(
                number: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BlueBox extends StatelessWidget {
  final int number;
  BlueBox({required this.number});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: number,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(),
        ),
      ),
    );
  }

  Widget wrapTest() {
    return Container(
      child: Wrap(),
    );
  }
}
