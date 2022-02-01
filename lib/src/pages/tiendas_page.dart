  import 'package:flutter/material.dart';
import 'package:prowessagronomia/src/pages/carrito_page.dart';
import 'package:prowessagronomia/src/widgets/panel_widget.dart';
import 'package:prowessagronomia/src/widgets/widget_drawer.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class StorePage extends StatefulWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); 
  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry radius = const BorderRadius.only(
    topLeft: Radius.circular(24.0),
    topRight: Radius.circular(24.0),
  );
    return    SafeArea(
      child: Scaffold(
        key: _key,
      drawer: const MenuLateral(),
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
            leading: IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: ()=> _key.currentState!.openDrawer(),
            ),
            actions: <Widget>[
              IconButton(
                padding: EdgeInsets.zero,
                icon: const Icon(Icons.add_shopping_cart_rounded),
                iconSize: 40.0,
                tooltip: 'Carrito',
                color: Colors.black,
                onPressed: () {
                   Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (BuildContext context) => const CarritoPage()));
                },
              ),
            ]
        ),
            body: SlidingUpPanel(
               
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
        
              body: Container(
               
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/mapa.png'),
                    fit: BoxFit.fill,
                  ),
                  
                ),
              ),
            panelBuilder: 
            (controller)=>PanelWidget(
              controller:controller,
            ),
             borderRadius: radius, 
        ),
        
      )
    );
    
    
  }
}