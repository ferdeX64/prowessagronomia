import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
 
   @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
      return SafeArea(
        left: true,
        right: true,
        bottom: true,
        top: true,
        child: Scaffold(
          resizeToAvoidBottomInset:false,
          backgroundColor: Colors.orange[100],
          body: Stack(
            children: [
              const Positioned(
                left: 125,
                top: 100,
                child: Text("Iniciar Sesión",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 30,
                    color: Colors.black
                  )
                ),
              ),
              Positioned(
                left: 15,
                right: 15,
                bottom: 440,
                child: Container(
                    height: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/Logo_ProwessAgronomia.png")
                      )
                    ),
                  ),
              ),
              const Positioned(
                left: 15,
                right: 15,
                bottom: 330,
                child: TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    hintText: "Correo@example.com",
                    labelStyle: TextStyle(color: Color(0xFF424242))
                  ),
                ),
              ),
              const Positioned(
                left: 15,
                right: 15,
                bottom: 270,
                child: TextField(
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                      counterStyle: TextStyle(color: Colors.black),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      hintText: "Contraseña",
                      labelStyle: TextStyle(color: Color(0xFF424242))
                  ),
                ),
              ),
              Positioned(
                  left: 115,
                  bottom: 170,
                  child: TextButton(
                      style: TextButton.styleFrom(
                        elevation: 0,
                        primary: Colors.black,
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Olvidaste Tu Contraseña?",
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      )
                  )
              ),
              Positioned(
                left: 15,
                right: 15,
                bottom: 110,
                child: Container(
                  width: 50,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2.5),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: TextButton(
                    style: const ButtonStyle(),
                    onPressed: () {
                      Navigator.pushNamed(context, "/home");
                    },
                    child: const Text(
                      "Siguiente",style: TextStyle(color: Colors.black),
                    ),
                  ),
                )
              ),
              Positioned(
                  left: 125,
                  bottom: 25,
                  child: TextButton(
                      style: TextButton.styleFrom(
                        elevation: 0,
                        primary: Colors.black,
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Eres nuevo? Registrate",
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      )
                  )
              ),
            ],
          ),
        ),
      );
    });
}
}