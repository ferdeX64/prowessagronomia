import 'package:async_button_builder/async_button_builder.dart';
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
            ]
            ),
        body: Container(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center(
                child: Text('Productos Populares',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 35,
                      color: Colors.black),
                      ),
              ),
              ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: mList1.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) => Container(
                  margin: const EdgeInsets.only(bottom: 30, left:20,right: 20,top:20),
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(109, 104, 117,0.3),
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
                          fontSize: 25,
                          color: Colors.black, height:2),),
                      Text(mList3[index].price,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 25,
                          color: Colors.black, height:2),),
                     AsyncButtonBuilder(
                      child: const Padding(
                        key: ValueKey('foo'),
                        padding: EdgeInsets.symmetric(
                          horizontal: 17.0,
                          vertical: 25.0,
                        ),
                        child: Text(
                          'Añadir al carrito',
                          style: TextStyle(color: Colors.white,fontSize: 20),
                        ),
                      ),
                      loadingWidget: const Padding(
                        key: ValueKey('bar'),
                        padding: EdgeInsets.all(12.0),
                        child: SizedBox(
                          height: 16.0,
                          width: 16.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                          ),
                        ),
                      ),
                      successWidget: const Padding(
                        key: ValueKey('foobar'),
                        padding: EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.check,
                          color: Colors.purpleAccent,
                        ),
                      ),
                      onPressed: () async {
                        await Future.delayed(const Duration(seconds: 2));
                      },
                      loadingSwitchInCurve: Curves.bounceInOut,
                      loadingTransitionBuilder: (child, animation) {
                        return SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(0, 1.0),
                            end: const Offset(0, 0),
                          ).animate(animation),
                          child: child,
                        );
                      },
                      builder: (context, child, callback, state) {
                        return Material(
                          color: state.maybeWhen(
                            success: () => Colors.purple[100],
                            orElse: () => Colors.lightGreen ,
                          ),
                          clipBehavior: Clip.hardEdge,
                          shape: const StadiumBorder(),
                          child: InkWell(
                            child: child,
                            onTap: callback,
                          ),
                        );
                      },
                    ),],
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