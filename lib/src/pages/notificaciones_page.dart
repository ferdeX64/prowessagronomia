import 'package:flutter/material.dart';

class NotificacionesPage extends StatefulWidget {
  const NotificacionesPage({ Key? key }) : super(key: key);

  @override
  _NotificacionesPageState createState() => _NotificacionesPageState();
}

class _NotificacionesPageState extends State<NotificacionesPage> {
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
        body: Form(
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 25),
                child: Center(
                  child: Text(
                    "Ingrese sus Datos",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: SizedBox(
                  height: 100,
                  width: 250,
                  child: TextFormField(
                    decoration:
                        const InputDecoration(labelText: 'Nombre'),
                  )
                )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 100,
                  width: 250,
                  child: TextFormField(
                    decoration:const InputDecoration(labelText: 'Apellido'),
                  )
                )
              ),
              
            ],
          ),
        )
      ),
    );
  }
  }