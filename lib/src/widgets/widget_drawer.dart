import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: [
        DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Column(children: [
              Expanded(
                child: Image.asset('images/Logo_ProwessAgronomia.png'),
              ),
              SizedBox(
                height: 10.0,
              ),
            ])),
            ListTile(
                leading: Icon(Icons.account_balance_outlined),
                title: Text('Inicio'),
                onTap: () {}
            ),
            ListTile(
            leading: Icon(Icons.apartment_outlined),
            title: Text('Nosotros'),
            onTap: () {}
            ),
            ListTile(
            leading: Icon(Icons.badge_outlined),
            title: Text('Equipo'),
            onTap: () {}
            ),
            ListTile(
            leading: Icon(Icons.shopping_bag_outlined),
            title: Text('MarketPlace'),
            onTap: () {}
            ),
            ListTile(
            leading: Icon(Icons.account_box_rounded),
            title: Text('Mi Cuenta'),
            onTap: () {}
            ),
      ]),
    );
  }
}