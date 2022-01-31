import 'package:flutter/material.dart';
import 'package:prowessagronomia/src/pages/carrito_page.dart';
import 'package:prowessagronomia/src/widgets/barra_busqueda.dart';
import 'package:prowessagronomia/src/widgets/widget_drawer.dart';

class CategoriaCarne extends StatefulWidget{
  const CategoriaCarne({Key? key}) : super(key: key);
   @override
  _CategoriaCarneState createState() => _CategoriaCarneState();
}
class _CategoriaCarneState extends State<CategoriaCarne>{
  final GlobalKey<ScaffoldState> _key = GlobalKey(); 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _key,
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.lightGreenAccent,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Image.asset('assets/images/Logo_ProwessAgronomia.png',
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
          actions: [
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
          ],
        ),
        drawer: const MenuLateral(),
        body: Column(
        children: [
           const Text('Carne',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 35,
                    color: Colors.black, height: 2),
                    ),
          _Searchbar(),
          const Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
            ),
          ),
        ],    
      ),
      ),
    );
  }
}

class _Searchbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
              margin: const EdgeInsets.only(top:20, left: 15, right: 15,bottom: 10),
              child: const CustomTextBox(hint: "Buscar", prefix: Icon(Icons.search, color:  Color(0xFF3E4249)))
      );
  }
}