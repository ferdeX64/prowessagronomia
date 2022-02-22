import 'package:flutter/material.dart';
import 'package:prowessagronomia/src/pages/add_product_page.dart';
import 'package:prowessagronomia/src/pages/categorias_productos.dart';
import 'package:prowessagronomia/src/pages/equipo_page.dart';
import 'package:prowessagronomia/src/pages/homepage.dart';
import 'package:prowessagronomia/src/pages/login_page.dart';
import 'package:prowessagronomia/src/pages/nosotros_page.dart';
import 'package:prowessagronomia/src/pages/pedidos_page.dart';
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
                ])
            ),
            ListTile(
              leading: const Icon(Icons.account_balance_outlined,color:Colors.white),
              title: const Text('Inicio',
                style: TextStyle(
                fontSize: 18,
                color: Colors.white),
              ),
              tileColor: Colors.green[600],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (BuildContext context) => const Homepage())
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.apartment_outlined,color: Colors.white),
              title: const Text('Nosotros',
                style: TextStyle(
                fontSize: 18,
                color: Colors.white),
              ),
              tileColor: Colors.green[600],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (BuildContext context) => const NosotrosPage())
                );
              }
            ),
            ListTile(
              leading: const Icon(Icons.badge_outlined,color:Colors.white),
              title: const Text('Equipo',
                style: TextStyle(
                fontSize: 18,
                color: Colors.white),
              ),
              tileColor: Colors.green[600],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (BuildContext context) => const EquipoPage())
                );
              }
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
                  contentBackgroundColor: Colors.orange[700],
                  leftIcon: const Icon(Icons.shopping_bag_outlined, color: Colors.white),
                  header: const Text('MarketPlace',
                    style: TextStyle(
                    fontSize: 18,
                    color: Colors.white),
                  ),
                  content: ListView(
                    shrinkWrap: true,
                    children: <Widget>[
                      Card(
                        color: Colors.green,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                              builder: (BuildContext context) => const Categorias())
                            );
                          },
                          child: const ListTile(
                            leading: Icon(Icons.production_quantity_limits_rounded,color: Colors.white),
                            title: Text('Productos',
                              style: TextStyle(
                              fontSize: 18,
                              color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.green,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                              builder: (BuildContext context) => const StorePage())
                            );
                          },
                          child: const ListTile(
                            leading: Icon(Icons.add_business_rounded,color: Colors.white),
                            title: Text('Tiendas',
                              style: TextStyle(
                              fontSize: 18,
                              color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ]
                  ),
                ),
              ],),
            ListTile(
                leading: const Icon(Icons.account_box_rounded,color:Colors.white),
                title: const Text('Iniciar Sesion',
                style: TextStyle(
                fontSize: 18,
                color: Colors.white),
              ),
                tileColor: Colors.green[600],
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const LoginPage()
                    )
                  );
                }
            ),
          ]
        ),
     )
    );
  }
}
