import 'package:flutter/material.dart';
import 'package:prowessagronomia/src/widgets/widget_drawer.dart';

class Homepage extends StatefulWidget {
  static String id = 'homepage';
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        drawer: MenuLateral(),
      ),
    );
  }
}

