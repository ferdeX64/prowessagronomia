import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:prowessagronomia/src/models/home_page_model.dart';
import 'package:prowessagronomia/src/pages/form_compra_page.dart';
import 'package:prowessagronomia/src/utils/productos_home_page.dart';


class CarritoPage extends StatefulWidget {
  const CarritoPage({Key? key}) : super(key: key);

  @override
  _CarritoPageState createState() => _CarritoPageState();
}

class _CarritoPageState extends State<CarritoPage> {
  late List<ProductsShareProduct> mList1;
  late List<ProductsShareName> mList2;
  late List<ProductsSharePrices> mList3;

   @override
  void initState() {
    super.initState();
    mList1 = productsImageList();
    mList2 = productsNameList();
    mList3 = productsPricesList();
  }
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
        body: ListView.separated(
            itemBuilder: (BuildContext context,int index){
              return Slidable(
                key: const ValueKey(0),
    
                // The start action pane is the one at the left or the top side.
                startActionPane: const ActionPane(
                  // A motion is a widget used to control how the pane animates.
                  motion: ScrollMotion(),
    
                  // A pane can dismiss the Slidable.
                  //dismissible: DismissiblePane(onDismissed: () {}),
                  
                  // All actions are defined in the children parameter.
                  children:  [
                    // A SlidableAction can have an icon and/or a label.
                      SlidableAction(
                      onPressed: doNothing,
                      backgroundColor: Color(0xFFFE4A49),
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                      label: 'Delete',
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25.0, vertical: 10),
                  child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: <Widget>[
                          SizedBox(
                             height: 100,
                          width: 100,
                          child: Image.asset(mList1[index].icon,
                              fit: BoxFit.cover)
                          ),
                        ],
                      ),
                      Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                        children: [
                           const Text(
                            'Nombre del Producto:  ',
                            style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                           Text(
                            mList2[index].name,
                            style: const TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        children: [
                          const Text(
                            'Costo Total: ',
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                          Text(
                            mList3[index].price,
                            style: TextStyle(
                                color: Colors.green[700],
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 80.0,)
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context,int index){
              return const Divider(
                height: 1.0,
                color: Colors.grey,
              );
            },
            itemCount: 3
        ),
        bottomSheet: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 75.0,
              width: 175.0,
              decoration: const BoxDecoration(
                  color: Colors.lightGreenAccent,
                  boxShadow: [
                     BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0,-1),
                        blurRadius: 5.0
                    ),
                  ]
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.add_shopping_cart_rounded),
                    TextButton(
                      child: const Text(
                        'Siguiente',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0
                        ),
                      ),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                          builder: (BuildContext context) => const FormCompra()));
                              },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
void doNothing(BuildContext context) {
  
}