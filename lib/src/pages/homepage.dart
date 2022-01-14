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
<<<<<<< HEAD
    return Scaffold(
      appBar: AppBar(
        title: const Text("Splash screen"),
      ),
      body: const Center(
        child:Text("Home Page"),
=======
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        drawer: MenuLateral(),
>>>>>>> 7c1f0be949221153576ed41adec3a5ad48520560
      ),
    );
  }
}

