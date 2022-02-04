import 'package:flutter/material.dart';
class NosotrosPage extends StatelessWidget {
  const NosotrosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SingleChildScrollView(
        child: Container(
          padding:const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Nosotros", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold))
                ],
              ),
              const Divider(
                height: 20,
                thickness: 1,
                indent: 20,
                endIndent: 20,
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    width: 280,
                    child:  SizedBox(
                      child: Image.asset('assets/images/acerca_nosotros.png',
                          fit: BoxFit.cover)
                          ),
                  )
                ],
              ),
              const Divider(
                height: 20,
                thickness: 1,
                indent: 20,
                endIndent: 20,
                color: Colors.black,
              ),
            ],
          ),
        ),
        
      ),
    );
  }
}