import 'package:flutter/material.dart';
class NosotrosPage extends StatelessWidget {
  const NosotrosPage({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Container(
          padding:const EdgeInsets.symmetric( horizontal: 15),
          child: Column(
            children: [
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    width: 280,
                    child:  SizedBox(
                      child: Image.asset('assets/images/acerca_nosotros.png',
                          fit: BoxFit.cover)
                          ),
                  )
                ],
              ),
              const Divider(
                height: 20,
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
                    height: 250,
                    child:  SizedBox(
                      child: Image.asset('assets/images/quienes_somos.png',
                          fit: BoxFit.cover)
                          ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("¿Quiénes somos?", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),textAlign: TextAlign.justify)
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 18),
                  
                    child: const Text("Prowess Agronomía es una plataforma creada para aumentar el desarrollo y comercialización de la producción agrícola de todo el país. Nuestro equipo trabaja arduamente para difundir el concepto de la agronomía como sistema.", 
                     style: TextStyle(fontSize: 15),textAlign: TextAlign.justify))
                ],
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
                    height: 220,

                    child:  SizedBox(
                      child: Image.asset('assets/images/mision.png',
                          fit: BoxFit.cover)
                          ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 18),
                    child: const Text("Ayudar al crecimiento económico y productivo de los Agricultores, siendo Prowess Agronomía un intermediario directo con buena capacidad de negociación y desarrollo de estrategias de comercialización, el mismo que se encargará de la distribución de los productos en buenas condiciones sin perder su calidad al momento de ser trasladados.", 
                     style: TextStyle(fontSize: 15),textAlign: TextAlign.justify))
                ],
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
                    height: 220,

                    child:  SizedBox(
                      child: Image.asset('assets/images/vision.png',
                          fit: BoxFit.cover)
                          ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 18),
                    child: const Text("Al 2024 ser una plataforma estable y ser considerados por nuestros beneficiarios y aliados como una opción viable para comercializar sus productos a todo el país.", 
                     style: TextStyle(fontSize: 15),textAlign: TextAlign.justify))
                ],
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
                    padding: const EdgeInsets.only(top: 25),
                    child: const Text("Objetivos generales", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),textAlign: TextAlign.justify))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  SizedBox(
                    child: Image.asset('assets/images/objetivos_generales.png',
                        fit: BoxFit.cover)
                        ),
                ],
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
                    padding: const EdgeInsets.only(top: 25),
                    child: const Text("Objetivos específicos", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),textAlign: TextAlign.justify))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Image.asset('assets/images/objetivos_especificos.png',
                        fit: BoxFit.cover)
                        ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 18),
                    child: const Text('''- Incrementar los mecanismos de comercialización de los distintos productos.

- Impulsar la compra y venta de productos agrícolas mediante la plataforma Prowess Agronomía.

- Desarrollar nuevas estrategias de negociación y comercialización con los consumidores.''', 
                     style: TextStyle(fontSize: 15),textAlign: TextAlign.justify))
                ],
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
                    padding: const EdgeInsets.only(top: 25, bottom: 15),
                    child: const Text("Valores", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),textAlign: TextAlign.justify))
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
                      Text("Responsabilidad"), 
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
                    width: 160,
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child:  SizedBox(
                      child: Image.asset('assets/images/responsabilidad.png',
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
                      Text("Respeto"), 
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
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child:  SizedBox(
                      child: Image.asset('assets/images/respeto.png',
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
                      Text("Eficiencia"), 
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
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child:  SizedBox(
                      child: Image.asset('assets/images/eficiencia.png',
                          fit: BoxFit.cover)
                          ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}