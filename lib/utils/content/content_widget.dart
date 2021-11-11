import 'package:flutter/material.dart';

/// Contenido dummy para un widget
/// Esta clase consta de un Container, SingleChildScrollView y una Column
class ContentWidget extends StatelessWidget {
  const ContentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.blue,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Información - 1',
              style: TextStyle(fontSize: 25),
            ),
            Text(
              'Información - 2',
              style: TextStyle(fontSize: 25),
            ),
            Text(
              'Información - 3',
              style: TextStyle(fontSize: 25),
            ),
            Text(
              'Información - 4',
              style: TextStyle(fontSize: 25),
            ),
            Text(
              'Información - 5',
              style: TextStyle(fontSize: 25),
            ),
            Text(
              'Información - 6',
              style: TextStyle(fontSize: 25),
            ),
            Text(
              'Información - 7',
              style: TextStyle(fontSize: 25),
            ),
            Text(
              'Información - 8',
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}

/// Contenido estatico para un widget
/// Esta clase contiene una columna
class ContentWidgetStatic extends StatelessWidget {
  const ContentWidgetStatic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Información - 1',
          style: TextStyle(fontSize: 25),
        ),
        Text(
          'Información - 2',
          style: TextStyle(fontSize: 25),
        ),
      ],
    );
  }
}
