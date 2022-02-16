import 'package:flutter/material.dart';

class RefreshPasswordPage extends StatefulWidget {
  const RefreshPasswordPage({ Key? key }) : super(key: key);

  @override
  _RefreshPasswordPageState createState() => _RefreshPasswordPageState();
}
class _RefreshPasswordPageState extends State<RefreshPasswordPage> {
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
          body: Form(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(top: 50),
                    child:  Center(
                        child: Text(
                          "¿Perdiste tu contraseña?",
                          style:
                              TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        )),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 18),
                    child: const Text("Por favor, introduce tu nombre de usuario o correo electrónico. Recibirás un enlace para crear una contraseña nueva por correo electrónico.", 
                     style: TextStyle(fontSize: 15),textAlign: TextAlign.justify)),
                  Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: SizedBox(
                          height: 100,
                          width: 320,
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor ingrese su Correo.';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                labelText: 'Usuario o Correo'),
                          ))),
                  Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            width: 200,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                  Navigator.pop(context);
                              },
                              child: const Text(
                                'Restablecer Contraseña',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          )))
                ]),
          ));
    
  }
}