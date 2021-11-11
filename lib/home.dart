import 'package:flutter/material.dart';
import 'tween_transform-animation/tween_animation.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo de widgets'),
      ),
      drawer: MenuLateral(),
      body: const Center(
        child: Text('Home page'),
      ),
    );
  }
}

class MenuLateral extends StatelessWidget {
  const MenuLateral({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Ink(
            color: Colors.indigo,
            child: ListTile(
              title: const Text(
                "Tween Animation",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => TweenAnimation(),
                ),
              ),
              leading: Icon(
                Icons.animation,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
