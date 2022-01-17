import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String id = 'login_page';

  @override
_LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
 @override
 Widget build(BuildContext context){
   return SafeArea(
     child: Scaffold(
       body: Center(
         child: Column(
           children :[
             Image.asset('images/Logo_ProwessAgronomia.png',
             height: 300.0,
             ),
              const SizedBox(height: 15.0),
             _userTextField(),
             const SizedBox(height: 15,),
             _passwordTextField(),
             const SizedBox(height: 20.0,),
             _bottonLogin(),
           ]
         )
       ), 

     ),  
   ); 
 }

Widget _userTextField(){
  return StreamBuilder(
    builder: (BuildContext context,AsyncSnapshot snapshot){
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: const TextField(
          decoration: InputDecoration(

          ),
        ),
      );
    }
    );

}
  _passwordTextField() {return StreamBuilder(
    builder: (BuildContext context,AsyncSnapshot snapshot){
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: const TextField(
          decoration: InputDecoration(
            
          ),
        ),
      );
    }
    );}

  _bottonLogin() {}


}
