import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prowessagronomia/src/pages/confirmacion_compra.dart';
import 'package:prowessagronomia/src/pages/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ProwessAgronomia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        fontFamily: 'Roboto',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
            shadowColor: Colors.grey,
            elevation: 20,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(0.0))
            )
          )
        ),
        inputDecorationTheme: InputDecorationTheme(
          border:OutlineInputBorder(borderRadius: BorderRadius.circular(0.0))
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            alignment: Alignment.centerLeft,
            primary: Colors.black,
          ),
        )
      ),
      home: const OnboardingScreenThree(),
    );
  }
}
