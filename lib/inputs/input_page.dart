import 'package:flutter/material.dart';

class InputPage extends StatelessWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ));
            }, child: Container()),
          // ElevatedButton(onPressed: null, child: child),
          // ElevatedButton(onPressed: null, child: child),
        ],
      ),
    );
  }
}
