import 'package:flutter/material.dart';
import 'package:prowessagronomia/src/models/home_page_model.dart';
import 'package:prowessagronomia/src/utils/productos_home_page.dart';
import 'package:prowessagronomia/src/widgets/widget_drawer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'carrito_page.dart';
import 'homepage.dart';

class OnboardingScreenThree extends StatefulWidget {
  const OnboardingScreenThree({Key? key}) : super(key: key);

  @override
  State<OnboardingScreenThree> createState() => _OnboardingScreenThreeState();
}

class _OnboardingScreenThreeState extends State<OnboardingScreenThree> {
  late List<ProductsShareProduct> mList1;
  late List<ProductsShareProduct> mList2;
  @override
  void initState() {
    super.initState();
    mList1 = iconsImagesList();
    mList2 =iconsNameList();
  }
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                width: size.width,
                height: size.height * 0.35,
                fit: BoxFit.cover,
                image: const AssetImage('assets/images/onboard2.png'),
              ),
            ],
          ),
          Positioned(
            top: size.height * 0.35,
            child: Container(
              width: size.width,
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Gracias por su compra',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(29, 24, 45,0.7),
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  const Text(
                    '¡Apreciamos mucho tu confianza en nosotros!\nHa sido un placer poder compartir con nuestos clientes',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                     color: Color.fromRGBO(109, 104, 117,0.8),
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  const Text(
                    'Síguenos también en nuestras redes sociales',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(29, 24, 45,0.7),
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: mList1.length,
                      shrinkWrap: true,
                      padding: const EdgeInsets.only(right: 16.0,top:15.0),
                      physics: const ScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 20,
                          width: 50,
                          margin: const EdgeInsets.only(right: 16),
                          padding: const EdgeInsets.all(1),                             
                          child: InkWell(
                              onTap: () => launch(mList2[index].icon),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset(mList1[index].icon, height: 70, width: 50),
                                ),
                            ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
         
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0 * 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.centerRight,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: FloatingActionButton(
                    // ignore: avoid_print
                    onPressed: () {
                      Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>  const Homepage()
                    )
                  );
                    },
                    backgroundColor: Colors.white,
                    child: const Icon(
                      Icons.done_rounded,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
