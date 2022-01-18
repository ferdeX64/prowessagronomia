import 'dart:async';
import 'package:flutter/material.dart';
import 'package:prowessagronomia/src/pages/homepage.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds:7), ()=>Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Homepage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end:Alignment.bottomRight,
            colors:[
              Color.fromRGBO(109, 104, 117,0.4),
              Color.fromRGBO(41, 50, 65,0.1),
            ]
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Logo_ProwessAgronomia.png', height: 123.0, width: 240.0,)
          , const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.orange)
            ),
          ],
        ),
      )
    );
  }
}