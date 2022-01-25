import 'package:flutter/material.dart';
class StorePageDetails extends StatefulWidget {
  const StorePageDetails({Key? key}) : super(key: key);

  @override
  State<StorePageDetails> createState() => _StorePageDetailsState();
}

class _StorePageDetailsState extends State<StorePageDetails> {
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
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Row(
              children: const [
                   Text("Tienda", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold))
              ],
            ),
            
          ),
          Container(

          )
        ],
      ));
  }
}