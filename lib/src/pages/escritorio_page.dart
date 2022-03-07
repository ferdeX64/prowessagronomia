import 'package:flutter/material.dart';
import 'package:prowessagronomia/src/user/user_data.dart';
import 'package:prowessagronomia/src/widgets/widget_drawer.dart';
import 'package:prowessagronomia/src/widgets/widget_endrawer.dart';
import 'package:percent_indicator/percent_indicator.dart';
class EscritorioPage extends StatefulWidget {
  const EscritorioPage({Key? key}) : super(key: key);

  @override
  State<EscritorioPage> createState() => _EscritorioPageState();
}

class _EscritorioPageState extends State<EscritorioPage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
    final user = UserData.myUser;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _key,
        drawer: const MenuLateral(),
        endDrawer: const MenuEndLateral(),
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
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () => _key.currentState!.openDrawer(),
          ),
        ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                     Padding(
                      padding: const EdgeInsets.symmetric(vertical:12.0),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const  [                           
                          Text("Tablero",  style: TextStyle( fontSize: 26, fontWeight:FontWeight.bold)),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: LinearPercentIndicator(
                              width: MediaQuery.of(context).size.width - 50,
                              animation: true,
                              lineHeight: 20.0,
                              animationDuration: 2000,
                              percent: 0.9,
                              center: const Text("90.0% Perfil Completado"),                                 
                              progressColor: Colors.blue[100],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width - 80,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue),
                                borderRadius: BorderRadius.circular(10),
                                 color:  Colors.blue[100] ,
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Añadir Banner para ganar un 15% de progreso"),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: LinearPercentIndicator(
                              width: MediaQuery.of(context).size.width - 50,
                              animation: true,
                              lineHeight: 20.0,
                              animationDuration: 2000,
                              percent: 0.9,
                              center: const Text("Ventas"),                                 
                              progressColor: Colors.blue[100],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width - 80,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue),
                                borderRadius: BorderRadius.circular(10),
                                 color:  Colors.blue[100] ,
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Añadir Banner para ganar un 15% de progreso"),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
      ),
    );
  }
}