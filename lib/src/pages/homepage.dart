import 'package:flutter/material.dart';
import 'package:prowessagronomia/src/widgets/widget_drawer.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 125,
          backgroundColor: Colors.lightGreenAccent,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Image.asset('assets/images/Logo_ProwessAgronomia.png',
                  fit: BoxFit.contain,     
                  height: 250,
                  width: 250,
              ),
            ],
          ),
        ),
        drawer: MenuLateral(),
      ),
    );
  }
}
