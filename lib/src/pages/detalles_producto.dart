import 'package:flutter/material.dart';
import 'package:prowessagronomia/src/pages/carrito_page.dart';
import 'package:prowessagronomia/src/widgets/widget_drawer.dart';

class DetalleProducto extends StatefulWidget{
  const DetalleProducto({Key? key}) : super(key: key);
   @override
  _DetalleProductoState createState() => _DetalleProductoState();
}
class _DetalleProductoState extends State<DetalleProducto>{
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
        body: Container(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center(
                child: Text('Sandía',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 35,
                      color: Colors.black),
                      ),
              ),
             Padding(
               padding: const EdgeInsets.all(12.0),
               child: Center(
                 child: Image.asset('assets/images/sandia.jpg',
                              height: 210, width: 330, fit: BoxFit.cover),
               ),
             ),
             const Center(
               heightFactor: 2,
              child:Text(r"$ 1,50",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 30,
                          color: Colors.black45, height:2),),
              ),
              Center(child: _BottomSelectNumber()),
            ],
          ),
        ),
      ),
      ),
    );
  }
}

class _BottomSelectNumber extends StatefulWidget {
  @override
  __BottomSelectNumberState createState() => __BottomSelectNumberState();
}

class __BottomSelectNumberState extends State<_BottomSelectNumber> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // menos :
          GestureDetector(
            onTap: () {
              setState(() {
                if (count == 0) {
                  count = 0;
                } else {
                  count--;
                }
              });
            },
            child: Container(
              alignment: Alignment.center,
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey.shade300),
              child: const Text('-', style: TextStyle(fontSize: 18)),
            ),
          ),
          // numero :
          Text('$count', style: const TextStyle(fontSize: 18)),
          // mas :
          GestureDetector(
            onTap: () {
              setState(() {
                count++;
              });
            },
            child: Container(
              alignment: Alignment.center,
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey.shade300),
              child: const Text('+', style: TextStyle(fontSize: 18)),
            ),
          ),
        ],
      ),
    );
  }
}