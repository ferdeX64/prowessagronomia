import 'package:flutter/material.dart';

class EvaluacionPage extends StatefulWidget {
  const EvaluacionPage({ Key? key }) : super(key: key);

  @override
  _EvaluacionPageState createState() => _EvaluacionPageState();
}

class _EvaluacionPageState extends State<EvaluacionPage> {
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
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Center(
                  child: Text(
                    "Evaluaciones",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Text(
                  "No se ha encontrado cupones",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                )
              ),
            ],
          ),
        )
      ),
    );
  }
}