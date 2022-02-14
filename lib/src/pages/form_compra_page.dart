import 'package:flutter/material.dart';

class FormCompra extends StatefulWidget {
  const FormCompra({Key? key}) : super(key: key);

  @override
  State<FormCompra> createState() => _FormCompraState();
}

class _FormCompraState extends State<FormCompra> {
  int selectedValue=0;
  bool? _checked=false;
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
                  // ignore: deprecated_member_use
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
                  padding: const EdgeInsets.only(bottom: 25, top: 10),
                  child: Row(
                    children: const [
                      Flexible(
                        child: TextField(
                              maxLines: 2,
                              decoration: InputDecoration(
                                icon: Icon(
                                    Icons.note_alt_outlined  ,
                                    size: 30,
                                    color: Colors.black,
                                ),
                                hintText: 'Notas sobre tu pedido, por ejemplo notas especiales sobre la entrega',
                              )
                            )
                      )
                  ],),
                ),
                const Text("Tu orden", style: TextStyle(color:Colors.black54,fontSize: 20, fontWeight:FontWeight.bold)),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const[
                          Text("Producto", style: TextStyle(color:Colors.black,fontSize: 18, fontWeight:FontWeight.bold)),
                        ],
                      ),
                      Column(
                        children: const [
                          Text("Subtotal", style: TextStyle(color:Colors.black,fontSize: 18, fontWeight:FontWeight.bold)),

                        ],
                      )
                    ],
                  ),
                ),  
                const Divider(
                  height: 1,
                  thickness: 1,
                   color: Colors.black,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const[
                          Text("Lomo de cerdito X1", style: TextStyle(color:Colors.black,fontSize: 18)),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const[
                          Text("Vendedor: AgroNatureShop", style: TextStyle(color:Colors.black,fontSize: 18, fontWeight:FontWeight.bold)),
                        ],
                      ),
                      Column(
                        children: const [
                          Text("\$3.50", style: TextStyle(color:Colors.black,fontSize: 18)),

                        ],
                      )
                    ],
                  ),
                ),
                const Divider(
                  height: 1,
                  thickness: 1,
                   color: Colors.black,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const[
                          Text("Subtotal", style: TextStyle(color:Colors.black,fontSize: 18, fontWeight:FontWeight.bold)),
                        ],
                      ),
                      Column(
                        children: const [
                          Text("\$3.50", style: TextStyle(color:Colors.black,fontSize: 18)),

                        ],
                      )
                    ],
                  ),
                ), 
                const Divider(
                  height: 1,
                  thickness: 1,
                   color: Colors.black,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const[
                          Text("Shipping: AgroNatureShop", style: TextStyle(color:Colors.black,fontSize: 18, fontWeight:FontWeight.bold)),
                        ],
                      ),
                      Column(
                        children: const [
                          Text("Precio fijo", style: TextStyle(color:Colors.black,fontSize: 18, fontWeight:FontWeight.bold)),

                        ],
                      )
                    ],
                  ),
                ), 
                const Divider(
                  height: 1,
                  thickness: 1,
                   color: Colors.black,
                ),
                Container(
                  padding: const EdgeInsets.only(top: 15, bottom:20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const[
                          Text("Total", style: TextStyle(color:Colors.black,fontSize: 18, fontWeight:FontWeight.bold)),
                        ],
                      ),
                      Column(
                        children: const [
                          Text("\$3.50", style: TextStyle(color:Colors.black,fontSize: 18)),
                        ],
                      )
                    ],
                  ),
                ),
                const Text("Método de pago", style: TextStyle(color:Colors.black54,fontSize: 20, fontWeight:FontWeight.bold)),
                Container(
                  padding: const EdgeInsets.only(top:20),
                  child: RadioListTile<int>(
                    value: 0, 
                    groupValue: selectedValue,
                    title: const Text("Transeferencia Bancaria directa", style: TextStyle( fontWeight: FontWeight.bold)),
                    subtitle: const Text("Realiza tu pago directamente en nuestra cuenta bancaria. Por favor usar el número del pedido como referencia de pago. Tu pedido no se procesar hasta que se haya recibido el importante en nuestra cuenta."
                    ,style: TextStyle(fontSize: 15),textAlign: TextAlign.justify),
                    onChanged: (value)=>setState(()=>selectedValue=0)
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top:20, bottom: 20),
                  child: RadioListTile<int>(
                    value: 1, 
                    groupValue: selectedValue,
                    title: const Text("Paypal Adaptive", style: TextStyle( fontWeight: FontWeight.bold)),
                    subtitle: const Text("Pague a través de Paypal Adaptive; puede pagar con su tarjeta de crédito si no tiene cuenta de paypal.",style: TextStyle(fontSize: 15),textAlign: TextAlign.justify),
                    onChanged: (value)=>setState(()=>selectedValue=1)
                  ),
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: const Text("He leído y estoy de acuerdo con los términos y condiciones de la app."),
                  value: _checked, 
                  onChanged: (value){
                    setState(() {
                      _checked=value;
                    });
                  }
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top:20),
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        padding:  const EdgeInsets.symmetric(vertical: 10,horizontal:20),
                        color: Colors.lightGreen, // background
                        textColor: Colors.white, // foreground
                        onPressed: () { },
                        child: Expanded(
                          child: Row(
                            children: const[
                              
                              Text('Realizar pedido',style: TextStyle(fontSize: 18),),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )
                
              
              ],
            ),
          ),
        ),
    
      );
    
  }
}