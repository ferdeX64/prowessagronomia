import 'package:flutter/material.dart';


class Homepage extends StatefulWidget {
  static String id = 'homepage';
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Splash screen"),
      ),
      body: const Center(
        child:Text("Home Page"),
      ),
    );
  }
}

