import 'package:flutter/material.dart';
import 'package:prowessagronomia/src/models/home_page_model.dart';
import 'package:prowessagronomia/src/utils/productos_home_page.dart';
import 'package:prowessagronomia/src/widgets/widget_drawer.dart';

import 'carrito_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}


class _HomepageState extends State<Homepage> {
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
            ]),
        body: Container(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: mList1.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) => Container(
                  margin: const EdgeInsets.only(bottom: 20, left:10,right: 20,top:20),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(109, 104, 117,0.4),
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                        width: 2, color: Colors.black26)),
                  child: Column( 
                    children: <Widget>[
                      Image.asset(mList1[index].icon,
                          height: 180, width: 250, fit: BoxFit.cover),
                      Text( mList2[index].name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Colors.black, height:2.5),),
                      Text(mList3[index].price,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Colors.black, height:2.5),),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
        drawer: const MenuLateral(),
      ),
    );
  }
}