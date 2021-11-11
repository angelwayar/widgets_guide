import 'package:flutter/material.dart';

class ContainerTweenAnimation extends StatelessWidget {
  const ContainerTweenAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 200,
        width: 200,
        color: Colors.red,
      ),
    );
  }
}
