import 'package:flutter/material.dart';

import 'add_new_product_page.dart';
class AddProduct extends StatelessWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () => Navigator.of(context).pop(),
            )
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding:  EdgeInsets.symmetric(vertical:12.0),
                  child:  Text("Tablero",  style: TextStyle( fontSize: 40, fontWeight:FontWeight.bold)),
                ),
                Center(
                  child: Image.asset('assets/images/etiqueta.png',height: 168, width: 170, fit: BoxFit.fill),
                ),
                const Padding(
                  padding:  EdgeInsets.symmetric(vertical:12.0),
                  child:  Text("¡No se ha encontrado productos!",  style: TextStyle( fontSize: 25, fontWeight:FontWeight.bold)),
                ),
                const Padding(
                  padding:  EdgeInsets.only(top:72.0, left: 12, right: 12, bottom: 70),
                  child:  Text("¿Listo para empezar a vender algo fantástico?",  style: TextStyle( fontSize: 25, fontWeight:FontWeight.bold), textAlign: TextAlign.center),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen,                    
                    elevation: 6.0,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    width: 280,
                    child: Row(
                      children: const[
                        Padding(
                          padding: EdgeInsets.only(right:8.0),
                          child: Icon(
                              Icons.shopping_bag_outlined,
                              size: 35,
                              color: Colors.white,
                          ),
                        ),
                        Text("Añadir nuevo producto",style: TextStyle(fontSize: 20)),
                      ],
                    )
                  ),
                  onPressed: (){   
                    Navigator.push(
                              context,
                              MaterialPageRoute(
                              builder: (BuildContext context) => const AddNewProduct())
                            );                 
                  },
                )   
              ],
            ),
          ),
        
      ),
    );
  }
}