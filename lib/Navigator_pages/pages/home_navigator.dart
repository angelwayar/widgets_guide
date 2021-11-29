import 'package:flutter/material.dart';

class HomeNavigator extends StatelessWidget {
  const HomeNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          // ElevatedButton(onPressed: () => , child: Text("Pagina 1")),
          // ElevatedButton(onPressed: () => , child: Text("Pagina 2")),
          // ElevatedButton(onPressed: () => , child: Text("Pagina 3")),
          Navigator(),
        ],
      ),
    );
  }
}
