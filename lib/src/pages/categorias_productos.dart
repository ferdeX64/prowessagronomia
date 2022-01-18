import 'package:flutter/material.dart';
import 'package:prowessagronomia/src/widgets/barra_busqueda.dart';
import 'package:prowessagronomia/src/widgets/widget_drawer.dart';

class Categorias extends StatefulWidget{
  const Categorias({Key? key}) : super(key: key);

   @override
  _CategoriaState createState() => _CategoriaState();
}
class _CategoriaState extends State<Categorias>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 125,
          backgroundColor: Colors.lightGreenAccent,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Image.asset('assets/images/Logo_ProwessAgronomia.png',
                  fit: BoxFit.contain,     
                  height: 250,
                  width: 250,
              ),
            ],
          ),
          actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () {},
          ),
        ],
        ),
        drawer: MenuLateral(),
        body: Column(
        children: [
          _Searchbar(),
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
              margin: const EdgeInsets.only(top:20, left: 15, right: 15),
              child: const CustomTextBox(hint: "Buscar", prefix: Icon(Icons.search, color:  Color(0xFF3E4249)))
      );
  }
}

class _TablesMenusOpts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      width: double.infinity,
      height: 620,
      child: Table(
        children:  const <TableRow>[
          TableRow(
            children: [
               _TableRowsMenus('Carne', 'assets/images/tipos-carnes.png'),
              _TableRowsMenus('Frutas', 'assets/images/tipos-frutas.png'),
            ],
          ),
          TableRow(
            children: [
              _TableRowsMenus('Lácteos', 'assets/images/tipos-lacteos.png'),
              _TableRowsMenus('Vegetales', 'assets/images/tipos-vegetales.png'),
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
  const _TableRowsMenus(this.description, this.image);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
                    fontWeight: FontWeight.w300,
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
