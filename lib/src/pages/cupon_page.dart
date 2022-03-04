import 'package:flutter/material.dart';

import 'add_cupon_page.dart';

class CuponPage extends StatefulWidget {
  const CuponPage({ Key? key }) : super(key: key);

  @override
  _CuponPageState createState() => _CuponPageState();
}

class _CuponPageState extends State<CuponPage> {
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
                padding: EdgeInsets.only(top: 25,bottom: 25),
                child: Center(
                  child: Text(
                    "Cupones",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight:FontWeight.bold
                    )
                  )
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightGreen,                    
                  elevation: 6.0,
                ),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  width: 280,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const[
                      Padding(
                        padding: EdgeInsets.only(right:8.0),
                        child: Icon(
                          Icons.shopping_bag_outlined,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                      Text("Agregar Nuevo Cupón ",
                        style: TextStyle(
                          fontSize: 20
                        )
                      ),
                    ],
                  )
                ),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (BuildContext context) => const AddCuponPage())
                    );
                },
              ),
              const Divider(
                height: 1,
                thickness: 1,
                indent: 20,
                endIndent: 20,
                color: Colors.black,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 25),
                child: Text(
                  "No se ha encontrado cupones",
                  textAlign: TextAlign.left,
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