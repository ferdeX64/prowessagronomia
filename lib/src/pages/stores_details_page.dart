import 'package:flutter/material.dart';
class StorePageDetails extends StatefulWidget {
  const StorePageDetails({Key? key}) : super(key: key);

  @override
  State<StorePageDetails> createState() => _StorePageDetailsState();
}

class _StorePageDetailsState extends State<StorePageDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Column(
          children: [
            Container(
              child: Row(
                children: const [
                     Text("Tienda", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold))
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                     Container(  
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 8, color: Colors.yellow),
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                  ),
                  height: 150,
                  width: 170,
                  child: SizedBox(
                 
                      child: Image.asset('assets/images/tienda.jpg',
                          fit: BoxFit.cover)),
                   )
                ], 
              ),
            ),
            Row(
              children:[
                Column(
                  children: [
                    Container(
                      child: const Text("Contactos", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                    )
                  ],
                )
              ]
            ),
            Row(
              children:[
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 15, 68, 10),
                      child: const Text("Vendedor:", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 10),
                      child: const Text("Juan Pérez", style: TextStyle(fontSize: 15)),
                    )
                  ],
                )
              ]
            ),
            Row(
              children:[
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 72, 10),
                      child: const Text("Teléfono:", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: const Text("0995946033", style: TextStyle(fontSize: 15)),
                    )
                  ],
                )
              ]
            ),
            Row(
              children:[
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 5, 10),
                      child: const Text("Correo electrónico:", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: const Text("prowressagronomia@store.com", style: TextStyle(fontSize: 15)),
                    )
                  ],
                )
              ]
            ),
              Row(
              children:[
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 15, 5, 10),
                      child: const Text("Contactar con el vendedor", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ]
            )


          ],
        ),
      ));
  }
}