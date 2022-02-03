import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prowessagronomia/src/pages/sign_up.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: SizedBox(
            height: size.height,
            child: Stack(
              children: [
                // SizedBox(
                //   height: size.height,
                //   child: Image.asset(
                //     'assets/images/Logo_ProwessAgronomia.png',
                //     fit: BoxFit.fitWidth,
                //   ),
                // ),
                Center(
                  child: Column(
                    children: [
                      const Expanded(
                        child: SizedBox(),
                      ),
                      Expanded(
                        flex: 9,
                        child: ClipRRect(                         
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.lightGreenAccent[400]!.withOpacity(.5),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: SizedBox(
                              width: size.width * .9,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: size.width * .05,
                                      bottom: size.width * .05,
                                    ),
                                    child: const Text(
                                      'Iniciar Sesión',
                                      style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FontStyle.italic,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                      bottom: 0,
                                    ),
                                    child: Image.asset(
                                      'assets/images/Logo_ProwessAgronomia.png',
                                      width: 250,
                                      height: 250,
                                    ),
                                  ),
                                  Container(
                                    height: size.width / 8,
                                    width: size.width / 1.25,
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.only(right: size.width / 30),
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(.1),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: const TextField(
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                      obscureText: false,
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.account_circle_outlined,
                                          color: Colors.black,
                                        ),
                                        border: InputBorder.none,
                                        hintMaxLines: 1,
                                        hintText: 'Usuario...',
                                        hintStyle: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),        
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: size.width / 8,
                                    width: size.width / 1.25,
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.only(right: size.width / 30),
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(.1),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: TextField(
                                      style: const TextStyle(
                                        color: Colors.black,
                                      ),
                                      obscureText: _obscureText,
                                      keyboardType: TextInputType.text,
                                      decoration: const InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.lock_outline,
                                          color: Colors.black,
                                        ),
                                        border: InputBorder.none,
                                        hintMaxLines: 1,
                                        hintText: 'Contraseña...',
                                        hintStyle: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ), 
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          text: '¿Olvidaste tu contraseña?',
                                          style: const TextStyle(
                                            color: Colors.black,
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              HapticFeedback.lightImpact();
                                              Fluttertoast.showToast(
                                                msg:'Boton presionado - ¿Olvidaste tu contraseña?',
                                              );
                                            },
                                        ),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          text: 'Crear una nueva cuenta',
                                          style: const TextStyle(
                                            color: Colors.black,
                                          ),
                                          recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            HapticFeedback.lightImpact();
                                            Fluttertoast.showToast(
                                              msg:
                                                  'Ingrese sus datos para crear la Cuenta',
                                            );
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (BuildContext context) => const SingUpScreen()
                                              )
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () {
                                      HapticFeedback.lightImpact();
                                      Fluttertoast.showToast(
                                        msg: 'Boton Presionado Acceder',
                                      );
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        bottom: size.width * .05,
                                      ),
                                      height: size.width / 8,
                                      width: size.width / 1.25,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(.1),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: const Text(
                                        'Acceder',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
    BuildContext context,
    Widget child,
    AxisDirection axisDirection,
  ){
    return child;
  }
}


