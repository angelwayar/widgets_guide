import 'package:flutter/material.dart';

import 'container/container_tween_animation.dart';

class TweenAnimation extends StatelessWidget {
  const TweenAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ContainerTweenAnimation(),
                ),
              ),
              child: Text('Container Tween Animation'),
            ),
          ],
        ),
      ),
    );
  }
}
