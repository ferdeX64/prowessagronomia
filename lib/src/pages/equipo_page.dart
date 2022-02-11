// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
class EquipoPage extends StatelessWidget {
  const EquipoPage({Key? key}) : super(key: key);

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
          child: Container(
            padding:const EdgeInsets.only(top: 25,bottom: 25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Equipo", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),textAlign: TextAlign.justify)
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: <Widget>[
                          const Expanded(
                              child: Divider(
                                height: 1,
                                thickness: 1,
                                indent: 20,
                                endIndent: 20,
                                color: Colors.black,
                              )
                          ), 
                          SizedBox(
                            height:25,
                            child: SizedBox(
                              child: Image.asset('assets/images/grupo.png',
                                  fit: BoxFit.cover)
                            ), 
                          ), 
                          const Expanded(
                              child: Divider(
                                height: 1,
                                thickness: 1,
                                indent: 20,
                                endIndent: 20,
                                color: Colors.black,
                              )
                          ),
                      ]
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      height: 240,
                      child:  SizedBox(
                        child: Image.asset('assets/images/dr_luis.png',
                            fit: BoxFit.cover)
                            ),
                    ),
                  ],
                ),
                Row(
                  children: const <Widget>[
                        Expanded(
                            child: Divider(
                              height: 1,
                              thickness: 1,
                              indent: 20,
                              endIndent: 20,
                              color: Colors.black,
                            )
                        ), 
                        Text("Director Del Proyecto"), 
                        Expanded(
                            child: Divider(
                              height: 1,
                              thickness: 1,
                              indent: 20,
                              endIndent: 20,
                              color: Colors.black,
                            )
                        ),
                    ]
                ),
                 Container(
                  padding: const EdgeInsets.only( left: 18, top:20 ),
                  child: Row(
                    children: const [
                      Text("Dr. Luis Enrique Simbaña Taipe, PhD.", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 18),
                      child: const Text("Establecer alianzas con los productores para que a través de Prowess Agronomía puedan incrementar exponencialmente las ventas de sus productos agrícolas ganando así mayor mercado de consumo.", 
                       style: TextStyle(fontSize: 15),textAlign: TextAlign.justify))
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(bottom:5, left: 18 ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 5 ),                    
                        child: const Icon(
                                Icons.call,
                                size: 22,
                              ),
                      ),
                      const Text("+593 99 816 0293")
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom:5, left: 18 ),
                  child: Row(
                    children: [
                      Container(  
                        padding: const EdgeInsets.only(right: 5 ),                    
                        child: const Icon(
                                Icons.mail,
                                size: 22,
                              ),
                      ),
                      const Text("lesimbania@espe.edu.ec")
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom:20, left: 18 ),
                  child: Row(
                    children: [
                      Container(  
                        padding: const EdgeInsets.only(right: 5 ),                    
                        child: const Icon(
                                Icons.link,
                                size: 22,
                              ),
                      ),
                      const Text("Linkedin")
                    ],
                  ),
                ),
                const Divider(
                  height: 1,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.black,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      height: 240,
                      child:  SizedBox(
                        child: Image.asset('assets/images/dr_carlos.jpg',
                            fit: BoxFit.cover)
                            ),
                    ),
                  ],
                ),
                Row(
                  children: const <Widget>[
                        Expanded(
                            child: Divider(
                              height: 1,
                              thickness: 1,
                              indent: 20,
                              endIndent: 20,
                              color: Colors.black,
                            )
                        ), 
                        Text("Codirector Del Proyecto"), 
                        Expanded(
                            child: Divider(
                              height: 1,
                              thickness: 1,
                              indent: 20,
                              endIndent: 20,
                              color: Colors.black,
                            )
                        ),
                    ]
                ),
                 Container(
                  padding: const EdgeInsets.only( left: 18, top:20 ),
                  child: Row(
                    children: const [
                      Text("Dr. Carlos Ramírez Lafuente, PhD.", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 18),
                      child: const Text("Asistencia técnica para el fortalecimiento de emprendimientos de personas refugiadas, solicitantes de asilo y personas de interés de ACNUR en Pichincha y Santo Domingo de los Tsáchilas ACNUR-HIAS-ESPE- (para población en movilidad humana).", 
                       style: TextStyle(fontSize: 15),textAlign: TextAlign.justify))
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(bottom:5, left: 18 ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 5 ),                    
                        child: const Icon(
                                Icons.call,
                                size: 22,
                              ),
                      ),
                      const Text("+593 99 816 0293")
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom:5, left: 18 ),
                  child: Row(
                    children: [
                      Container(  
                        padding: const EdgeInsets.only(right: 5 ),                    
                        child: const Icon(
                                Icons.mail,
                                size: 22,
                              ),
                      ),
                      const Text("lesimbania@espe.edu.ec")
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom:20, left: 18 ),
                  child: Row(
                    children: [
                      Container(  
                        padding: const EdgeInsets.only(right: 5 ),                    
                        child: const Icon(
                                Icons.link,
                                size: 22,
                              ),
                      ),
                      const Text("Linkedin")
                    ],
                  ),
                ),
                const Divider(
                  height: 1,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.black,
                ),
                Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: <Widget>[
                          const Expanded(
                              child: Divider(
                                height: 1,
                                thickness: 1,
                                indent: 20,
                                endIndent: 20,
                                color: Colors.black,
                              )
                          ), 
                          Container(
                            height:25,
                            child: SizedBox(
                              child: Image.asset('assets/images/user.png',
                                  fit: BoxFit.cover)
                            ), 
                          ), 
                          const Expanded(
                              child: Divider(
                                height: 1,
                                thickness: 1,
                                indent: 20,
                                endIndent: 20,
                                color: Colors.black,
                              )
                          ),
                      ]
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      height: 240,
                      child:  SizedBox(
                        child: Image.asset('assets/images/andres_auquilla.png',
                            fit: BoxFit.cover)
                            ),
                    ),
                  ],
                ),
                Row(
                  children: const <Widget>[
                        Expanded(
                            child: Divider(
                              height: 1,
                              thickness: 1,
                              indent: 20,
                              endIndent: 20,
                              color: Colors.black,
                            )
                        ), 
                        Text("Lider Del Proyecto"), 
                        Expanded(
                            child: Divider(
                              height: 1,
                              thickness: 1,
                              indent: 20,
                              endIndent: 20,
                              color: Colors.black,
                            )
                        ),
                    ]
                ),
                 Container(
                  padding: const EdgeInsets.only( left: 18, top:20 , bottom:20),
                  child: Row(
                    children: const [
                      Text("Andrés Fernando Auquilla Astudillo", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom:5, left: 18 ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 5 ),                    
                        child: const Icon(
                                Icons.call,
                                size: 22,
                              ),
                      ),
                      const Text("+593 99 670 4676")
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom:5, left: 18 ),
                  child: Row(
                    children: [
                      Container(  
                        padding: const EdgeInsets.only(right: 5 ),                    
                        child: const Icon(
                                Icons.mail,
                                size: 22,
                              ),
                      ),
                      const Text("afauquilla@espe.edu.ec")
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom:20, left: 18 ),
                  child: Row(
                    children: [
                      Container(  
                        padding: const EdgeInsets.only(right: 5 ),                    
                        child: const Icon(
                                Icons.link,
                                size: 22,
                              ),
                      ),
                      const Text("Linkedin")
                    ],
                  ),
                ),
                const Divider(
                  height: 1,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.black,
                ),
                Container(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Row(
                    children: const <Widget>[
                          Expanded(
                              child: Divider(
                                height: 1,
                                thickness: 1,
                                indent: 20,
                                endIndent: 20,
                                color: Colors.black,
                              )
                          ), 
                          Text("Software"), 
                          Expanded(
                              child: Divider(
                                height: 1,
                                thickness: 1,
                                indent: 20,
                                endIndent: 20,
                                color: Colors.black,
                              )
                          ),
                      ]
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Container(
                      padding: const EdgeInsets.only(bottom: 30),
                      height: 190,
                      child:  SizedBox(
                        child: Image.asset('assets/images/ef.png',
                            fit: BoxFit.cover)
                            ),
                    ),
                  ],
                ),
                Row(
                  children: const <Widget>[
                        Expanded(
                            child: Divider(
                              height: 1,
                              thickness: 1,
                              indent: 20,
                              endIndent: 20,
                              color: Colors.black,
                            )
                        ), 
                        Text("Líder del equipo de programación"), 
                        Expanded(
                            child: Divider(
                              height: 1,
                              thickness: 1,
                              indent: 20,
                              endIndent: 20,
                              color: Colors.black,
                            )
                        ),
                    ]
                ),
                 Container(
                  padding: const EdgeInsets.only( left: 18, top:20 , bottom:20, right: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Erick Alejandro Fernández Bustos", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),textAlign: TextAlign.center)
                    ],
                  ),
                ),
                const Divider(
                  height: 1,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.black,
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      height: 240,
                      child:  SizedBox(
                        child: Image.asset('assets/images/cf.jpeg',
                            fit: BoxFit.cover)
                            ),
                    ),
                  ],
                ),
                Row(
                  children: const <Widget>[
                        Expanded(
                            child: Divider(
                              height: 1,
                              thickness: 1,
                              indent: 20,
                              endIndent: 20,
                              color: Colors.black,
                            )
                        ), 
                        Text("Cristopher Alexis Rugel Tiguaro"), 
                        Expanded(
                            child: Divider(
                              height: 1,
                              thickness: 1,
                              indent: 20,
                              endIndent: 20,
                              color: Colors.black,
                            )
                        ),
                    ]
                ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      height: 240,
                      child:  SizedBox(
                        child: Image.asset('assets/images/as.jpeg',
                            fit: BoxFit.cover)
                            ),
                    ),
                  ],
                ),
                Row(
                  children: const <Widget>[
                        Expanded(
                            child: Divider(
                              height: 1,
                              thickness: 1,
                              indent: 20,
                              endIndent: 20,
                              color: Colors.black,
                            )
                        ), 
                        Text("Adrian Alexander Salazar Rivera"), 
                        Expanded(
                            child: Divider(
                              height: 1,
                              thickness: 1,
                              indent: 20,
                              endIndent: 20,
                              color: Colors.black,
                            )
                        ),
                    ]
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      height: 240,
                      child:  SizedBox(
                        child: Image.asset('assets/images/cl.jpeg',
                            fit: BoxFit.cover)
                            ),
                    ),
                  ],
                ),
                Row(
                  children: const <Widget>[
                        Expanded(
                            child: Divider(
                              height: 1,
                              thickness: 1,
                              indent: 20,
                              endIndent: 20,
                              color: Colors.black,
                            )
                        ), 
                        Text("Christopher Fabricio Llano Chinchero"), 
                        Expanded(
                            child: Divider(
                              height: 1,
                              thickness: 1,
                              indent: 20,
                              endIndent: 20,
                              color: Colors.black,
                            )
                        ),
                    ]
                ),
                
                
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}