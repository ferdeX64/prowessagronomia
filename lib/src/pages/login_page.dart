import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prowessagronomia/src/pages/sign_up.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft, 
          end: Alignment.bottomRight, 
          colors: [
            Colors.white,
            Colors.green,
          ]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 350.0),
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black, size: 25
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
              Image.asset(
                'assets/images/Logo_ProwessAgronomia.png',
                width: 250,
                height: 250,
              ),
              //SizedBox(height: 7),
              Container(
                height: height *0.6,
                margin: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 55, vertical: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Login",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            width: 3,
                            height: 25,
                            color: Colors.lightBlue,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const Text(
                              "Signin",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 22,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Spacer(),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 35),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'username',
                          helperText: '',
                          prefixIcon: Icon(
                            Icons.person,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 35),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'username',
                          helperText: '',
                          prefixIcon: Icon(
                            Icons.lock_open,
                          ),
                        ),
                      ),
                    ),
                    //button
                    Container(
                      width: width * 0.5,
                      height: height * 0.07,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.green,
                            Colors.white,
                          ]
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: FlatButton(
                        child: const Text(
                          'Login',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        textColor: Colors.black,
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        const Text("Or Login Using"),
                        const SizedBox(height: 15),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  "assets/images/Logo_ProwessAgronomia.png",
                                  height: 40,
                                ),
                                Image.asset(
                                  "assets/images/Logo_ProwessAgronomia.png",
                                  height: 40,
                                ),
                                Image.asset("assets/images/Logo_ProwessAgronomia.png", height: 40),
                                Image.asset("assets/images/Logo_ProwessAgronomia.png", height: 40),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
