import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:Ink( color: Colors.green[600], child:  ListView(padding: EdgeInsets.zero, children: [
        DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.lightGreenAccent,
            ),
            child: Column(children: [
              Expanded(
                child: Image.asset('assets/images/Logo_ProwessAgronomia.png'),
              ),
              const SizedBox(
                height: 10.0,
              ),
            ])),
        ListTile(
            leading: const Icon(Icons.account_balance_outlined),
            title: const Text('Inicio'),
            tileColor: Colors.green[600],
            onTap: () {}),
        ListTile(
            leading: const Icon(Icons.apartment_outlined),
            title: const Text('Nosotros'),
            tileColor: Colors.green[600],
            onTap: () {}),
        ListTile(
            leading: const Icon(Icons.badge_outlined),
            title: const Text('Equipo'),
            tileColor: Colors.green[600],
            onTap: () {}),
        ListTile(
            leading: const Icon(Icons.shopping_bag_outlined),
            title: const Text('MarketPlace'),
            tileColor: Colors.green[600],
            onTap: () {}),
        ListTile(
            leading: const Icon(Icons.account_box_rounded),
            title: const Text('Mi Cuenta'),
            tileColor: Colors.green[600],
            onTap: () {}),
      ]),
    )
    );
  }
}
