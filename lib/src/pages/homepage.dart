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
                icon: const Icon(Icons.add_shopping_cart_rounded),
                iconSize: 40.0,
                tooltip: 'Carrito',
                color: Colors.white,
                onPressed: () {
                  // Navigator.push(
                  // context,
                  // MaterialPageRoute(
                  //   builder: (BuildContext context) => HomePage()));
                },
              ),
            ]),
        body: Container(
          child: Text(
              'Kandersteg, Switzerland',
              style: TextStyle(
                color: Colors.grey[500],
              ),
          ),
        ),
        drawer: MenuLateral(),
      ),
    );
  }
}
