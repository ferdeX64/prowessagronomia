import 'package:flutter/material.dart';
import 'package:prowessagronomia/src/pages/add_product_page.dart';
import 'package:prowessagronomia/src/pages/cupon_page.dart';
import 'package:prowessagronomia/src/pages/evaluacion_page.dart';
import 'package:prowessagronomia/src/pages/notificaciones_page.dart';
import 'package:prowessagronomia/src/pages/pedidos_page.dart';
import 'package:prowessagronomia/src/pages/profile_page.dart';
class MenuEndLateral extends StatelessWidget {
  const MenuEndLateral({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(

          child: Ink(
            color: Colors.black87, 
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.lightGreenAccent,
                  ),
                  child: Column(children: [
                    Expanded(
                      child: Image.asset(
                          'assets/images/Logo_ProwessAgronomia.png'),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                  ])
                ),
                ListTile(
                  leading: const Icon(
                    Icons.redeem,
                    size:30,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (BuildContext context) => const AddProduct())
                    );
                  },
                  title: const Text("Productos",
                    style: TextStyle(fontSize: 20,color: Colors.white,)
                  ),
                ),
                const Divider(
                  height: 2,
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.white,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.request_page,
                    size:30,
                    color: Colors.white
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const PedidosPage()
                      )
                    );
                  },
                  title: const Text("Pedidos",
                    style: TextStyle(fontSize: 20,color: Colors.white,)
                  ),
                ),
                const Divider(
                  height: 2,
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.white,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.branding_watermark,
                    size:30,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (BuildContext context) => const CuponPage())
                    );
                  },
                  title: const Text("Cupones",
                    style: TextStyle(fontSize: 20,color: Colors.white,)
                  ),
                ),
                const Divider(
                  height: 2,
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.white,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.star_half,
                    size:30,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (BuildContext context) => const EvaluacionPage())
                    );
                  },
                  title: const Text("Evaluaciones",
                    style: TextStyle(fontSize: 20,color: Colors.white,)
                  ),
                ),
                const Divider(
                  height: 2,
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.white,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.doorbell,
                    size:30,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (BuildContext context) => const NotificacionesPage())
                    );
                  },
                  title: const Text("Notificaciones",
                    style: TextStyle(fontSize: 20,color: Colors.white,)
                  ),
                ),
                const Divider(
                  height: 2,
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.white,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.person,
                    size:30,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (BuildContext context) => const ProfilePage())
                    );
                  },
                  title: const Text("Mi cuenta",
                    style: TextStyle(fontSize: 20,color: Colors.white,)
                  ),
                ),
                const Divider(
                  height: 2,
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        );
  }
}