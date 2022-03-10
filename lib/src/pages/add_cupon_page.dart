import 'package:flutter/material.dart';

class AddCuponPage extends StatefulWidget {
  const AddCuponPage({Key? key}) : super(key: key);

  @override
  State<AddCuponPage> createState() => _AddCuponPageState();
}

class _AddCuponPageState extends State<AddCuponPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
        body: Container(
          padding: const EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 25,bottom: 25),
                  child: Center(
                    child: Text('Cupón',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 35,
                        color: Colors.black
                      ),
                    ),
                  ),
                ),
                const Divider(
                  height: 1,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25,bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text('Titulo del Cupón',
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                  child: Container(
                    height: size.width / 8,
                    width: size.width / 1.25,
                    //margin: EdgeInsetsGeometry.infinity,//cambio
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
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.account_circle_outlined,
                          color: Colors.black,
                        ),
                        border: InputBorder.none,
                        hintMaxLines: 1,
                        hintText: 'Titulo',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),        
                      ),
                    ),
                  ),
                ),
                const Divider(
                  height: 1,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25,bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text('Descripción',
                        textAlign: TextAlign.left,
                      ),
                    ],
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
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.account_circle_outlined,
                        color: Colors.black,
                      ),
                      border: InputBorder.none,
                      hintMaxLines: 1,
                      hintText: 'Descripción',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),        
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      )
    );
  }
}
