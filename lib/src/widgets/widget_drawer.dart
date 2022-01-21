import 'package:flutter/material.dart';
import 'package:prowessagronomia/src/pages/categorias_productos.dart';
import 'package:prowessagronomia/src/pages/homepage.dart';
import 'package:prowessagronomia/src/pages/tiendas_page.dart';
import 'package:accordion/accordion.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:Ink( 
        color: Colors.green[600], 
        child:  ListView(
          padding: EdgeInsets.zero, 
          children: [
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
              onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(
                builder: (BuildContext context) => Homepage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.apartment_outlined),
              title: const Text('Nosotros'),
              tileColor: Colors.green[600],
              onTap: () {}),
            ListTile(
              leading: const Icon(Icons.badge_outlined),
              title: const Text('Equipo'),
              tileColor: Colors.green[600],
              onTap: () {}
            ),
            Accordion(
              paddingListBottom: 0.0,
              paddingBetweenClosedSections: 0.0,
              paddingListHorizontal: 0,
              paddingListTop: 0.0,
              paddingBetweenOpenSections: 0.0,
              headerBackgroundColor: Colors.green[600],
              contentBorderColor:  Colors.green[600],
              contentBackgroundColor: Colors.lightGreenAccent,
              headerPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              children: [
                AccordionSection(
                  isOpen: false,
                  leftIcon: const Icon(Icons.shopping_bag_outlined, color: Colors.black),
                  header: const Text('MarketPlace'),
                  content: ListView(
                    shrinkWrap: true,
                    children: <Widget>[
                      Card(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                              builder: (BuildContext context) => const Categorias())
                            );
                          },
                          child: const ListTile(
                          leading: Icon(Icons.production_quantity_limits_rounded,color: Colors.black),
                          title: Text('Productos'),
                          ),
                        ),
                      ),
                      Card(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                              builder: (BuildContext context) => const StorePage()));
                          },
                          child: const ListTile(
                            leading: Icon(Icons.add_business_rounded,color: Colors.black),
                            title: Text('Tiendas'),
                          ),
                        ),
                      ),
                    ]
                  ),
                ),
              ],),
            ListTile(
                leading: const Icon(Icons.account_box_rounded),
                title: const Text('Registrarse'),
                tileColor: Colors.green[600],
                onTap: () {}
            ),
          ]
        ),
     )
    );
  }
}
