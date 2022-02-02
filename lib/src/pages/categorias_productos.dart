import 'package:flutter/material.dart';
import 'package:prowessagronomia/src/pages/carrito_page.dart';
import 'package:prowessagronomia/src/widgets/barra_busqueda.dart';
import 'package:prowessagronomia/src/widgets/widget_drawer.dart';

import 'categoria_carne_product.dart';
import 'categoria_fruta_product.dart';

class Categorias extends StatefulWidget{
  const Categorias({Key? key}) : super(key: key);
   @override
  _CategoriaState createState() => _CategoriaState();
}
class _CategoriaState extends State<Categorias>{
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
          _Searchbar(),
           const Text('Productos',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 35,
                    color: Colors.black),
                    ),
            const Text('Categorias',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.black),
                    ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: _TablesMenusOpts(),
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

class _TablesMenusOpts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 25),
      width: double.infinity,
      height: 620,
      child: Table(
        children:  const <TableRow>[
          TableRow(
            children: [
               _TableRowsMenus('Carne', 'assets/images/tipos-carnes.png',CategoriaCarne()),
              _TableRowsMenus('Frutas', 'assets/images/tipos-frutas.png',CategoriaFruta()),
            ],
          ),
          TableRow(
            children: [
              _TableRowsMenus('Lácteos', 'assets/images/tipos-lacteos.png',CategoriaCarne()),
              _TableRowsMenus('Vegetales', 'assets/images/tipos-vegetales.png',CategoriaCarne()),
            ],
          ),
        ],
      ),
    );
  }
}

class _TableRowsMenus extends StatelessWidget {
  final String description;
  final String image;
  final Widget direccion;
  const _TableRowsMenus(this.description, this.image, this.direccion);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>  direccion
                    )
                  );
      },
      child: Padding( 
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 180,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [
                BoxShadow(
                color: Color(0xFF3E4249),
                blurRadius: 5,
                ),
            ],
          ),
          child: Column(
            children: [
              // IMAGEN :
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 125,
                child: Image.asset(image),
              ),
              const SizedBox(height: 20),
              // DESCRIPTION :
              Text(
                description,
                style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
