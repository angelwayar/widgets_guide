import 'package:flutter/material.dart';

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
        children: [
          Ink(
            color: Colors.indigo,
            child: const ListTile(
              title: Text(
                "MENU 1",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          ListTile(
            title: const Text("MENU 2"),
            onTap: () {},
          ),
          const ListTile(
            title: Text("MENU 3"),
          ),
          const ListTile(
            title: Text("MENU 4"),
          )
        ],
      ),
    );
  }
}
