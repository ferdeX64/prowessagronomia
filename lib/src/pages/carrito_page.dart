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
            toolbarHeight: 80,
            backgroundColor: Colors.lightGreenAccent,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/Logo_ProwessAgronomia.png',
                  fit: BoxFit.contain,
                  height: 150,
                  width: 150,
                ),
              ],
            ),
            actions: <Widget>[
              IconButton(
                padding: EdgeInsets.zero,
                icon: const Icon(Icons.account_box_rounded),
                iconSize: 40.0,
                tooltip: 'Registrar Cuenta',
                color: Colors.black,
                onPressed: () {},
              ),
            ]),
        drawer: MenuLateral(),
      ),
    );
  }
}
