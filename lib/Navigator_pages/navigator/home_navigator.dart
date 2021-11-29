import 'package:flutter/material.dart';
import 'package:widgets_guide/Navigator_pages/pages/home_navigator.dart';

class HomePage extends Page {
  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (BuildContext context) => const HomeNavigator(),
    );
  }
}
