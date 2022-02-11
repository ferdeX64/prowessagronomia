import 'package:flutter/material.dart';

class FormCompra extends StatefulWidget {
  FormCompra({Key? key}) : super(key: key);

  @override
  State<FormCompra> createState() => _FormCompraState();
}

class _FormCompraState extends State<FormCompra> {
  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
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
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Finalizar compra", style: TextStyle( fontSize: 40, fontWeight:FontWeight.bold)),
                const Text("Detalles de facturacion", style: TextStyle(color:Colors.black54,fontSize: 20, fontWeight:FontWeight.bold)),
                Container(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Row(
                    children: const [
                      Flexible(
                        child: TextField(
                              decoration: InputDecoration(
                                icon: Icon(
                                    Icons.account_box_outlined,
                                    size: 30,
                                    color: Colors.black,
                                ),
                                hintText: 'Nombre',
                              )
                            )
                      )
                  ],),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: const [
                      Flexible(
                        child: TextField(
                              decoration: InputDecoration(
                                icon: Icon(
                                    Icons.person,
                                    size: 30,
                                    color: Colors.black,
                                ),
                                hintText: 'Apellidos',
                              )
                            )
                      )
                  ],),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: const [
                      Flexible(
                        child: TextField(
                              decoration: InputDecoration(
                                icon: Icon(
                                    Icons.account_balance_outlined,
                                    size: 30,
                                    color: Colors.black,
                                ),
                                hintText: 'Nombre de la empresa',
                              )
                            )
                      )
                  ],),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: const [
                      Flexible(
                        child: TextField(
                              decoration: InputDecoration(
                                icon: Icon(
                                    Icons.location_on,
                                    size: 30,
                                    color: Colors.black,
                                ),
                                hintText: 'País / región',
                              )
                            )
                      )
                  ],),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: const [
                      Flexible(
                        child: TextField(
                              decoration: InputDecoration(
                                icon: Icon(
                                    Icons.location_on_outlined ,
                                    size: 30,
                                    color: Colors.black,
                                ),
                                hintText: 'Provincia / ciudad',
                              )
                            )
                      )
                  ],),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: const [
                      Flexible(
                        child: TextField(
                              decoration: InputDecoration(
                                icon: Icon(
                                    Icons.streetview ,
                                    size: 30,
                                    color: Colors.black,
                                ),
                                hintText: 'Nombres de la calles',
                              )
                            )
                      )
                  ],),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: const [
                      Flexible(
                        child: TextField(
                              decoration: InputDecoration(
                                icon: Icon(
                                    Icons.house_outlined ,
                                    size: 30,
                                    color: Colors.black,
                                ),
                                hintText: 'Número de la casa',
                              )
                            )
                      )
                  ],),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: const [
                      Flexible(
                        child: TextField(
                              decoration: InputDecoration(
                                icon: Icon(
                                    Icons.email   ,
                                    size: 30,
                                    color: Colors.black,
                                ),
                                
                                hintText: 'Correo electrónico',
                              )
                            )
                      )
                  ],),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Row(
                    children: const [
                      Flexible(
                        child: TextField(
                              decoration: InputDecoration(
                                icon: Icon(
                                    Icons.ad_units  ,
                                    size: 30,
                                    color: Colors.black,
                                ),
                                hintText: 'Celular',
                              )
                            )
                      )
                  ],),
                ),
                const Text("Ubicación", style: TextStyle(color:Colors.black54,fontSize: 20, fontWeight:FontWeight.bold)),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Center(
                    child: Image.asset('assets/images/mapa.png',
                        height: 260, width: 450, fit: BoxFit.cover),
                  ),
                ),
                Center(
                  child: Container(
                    width: 220,
                    padding:  const EdgeInsets.only(top: 5.0, bottom: 25),
                  child: RaisedButton(
                    padding:  const EdgeInsets.symmetric(vertical: 10,horizontal:20),
                    color: Colors.lightGreen, // background
                    textColor: Colors.white, // foreground
                    onPressed: () { },
                    child: Expanded(
                      child: Row(
                        children: const[
                          Icon(
                              Icons.location_on_outlined ,
                              size: 30,
                              color: Colors.white,
                          ),
                          Text('Usar mi ubicacion',style: TextStyle(fontSize: 18),),
                        ],
                      ),
                    ),
                  )

                  ),
                ),
                const Text("Notas", style: TextStyle(color:Colors.black54,fontSize: 20, fontWeight:FontWeight.bold)),
                Container(
                  padding: const EdgeInsets.only(bottom: 20, top: 10),
                  child: Row(
                    children: const [
                      Flexible(
                        child: TextField(
                              decoration: InputDecoration(
                                icon: Icon(
                                    Icons.ad_units  ,
                                    size: 30,
                                    color: Colors.black,
                                ),
                                hintText: 'Celular',
                              )
                            )
                      )
                  ],),
                ),
          
                
              ],
            ),
          ),
        ),
    
      );
    
  }
}