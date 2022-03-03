import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class AddNewProduct extends StatefulWidget {
  const AddNewProduct({Key? key}) : super(key: key);

  @override
  State<AddNewProduct> createState() => _AddNewProductState();
}

class _AddNewProductState extends State<AddNewProduct> {
  File? _imagen;
  String dropdownValue = 'Selecciona una categoria';
  String dropdownValuee = 'Selecciona una etiqueta';
  final ImagePicker _picker = ImagePicker();
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
            body:  SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:12.0),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                           Icon(
                            Icons.redeem,
                            color: Colors.black,
                          ),
                          Text("  Añadir nuevo producto",  style: TextStyle( fontSize: 26, fontWeight:FontWeight.bold)),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                                InkWell(
                                  child: Container(
                                    padding: const EdgeInsets.only(right:20),
                                    height: 100,
                                    width: MediaQuery.of(context).size.width*1/5,                    
                                    child: _imagen == null
                                        ? Image.asset('assets/images/add_image.png')
                                        : Image.file(_imagen!),                                
                                  ),
                                  onTap: () => _selectImage(ImageSource.gallery),
                                ),                         
                          ],
                        ),
                        Column(
                          children: [
                            Row(                       
                                  children: [
                                      Container(
                                        height:100,
                                        width: MediaQuery.of(context).size.width*7/10,
                                        padding: const EdgeInsets.only(bottom: 25, top: 10),
                                        child: Row(
                                          children: const [
                                            Flexible(
                                              child: TextField(                                              
                                                    decoration: InputDecoration(                                                    
                                                      hintText: 'Nombre del producto',
                                                    )
                                                  )
                                            )
                                        ],),
                                      ),
                                ],
                              ),
                              Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.only(right: 5),
                                      width: MediaQuery.of(context).size.width*3/10,
                                      child: const TextField(                                              
                                            decoration: InputDecoration(                                                
                                              hintText: 'Precio',
                                            )
                                          ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width*8/20,
                                      child: const TextField(                                              
                                      decoration: InputDecoration(                                                
                                        hintText: 'Precio en oferta',
                                      )
                                  ),
                                    )
                                  ],
                                )                                   
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right:8.0, top:10),
                      child: Row(
                        children: [                                           
                          const Padding(                       
                            padding:EdgeInsets.only(right:15.0,),
                            child: Text("Categoria:",  style: TextStyle( fontSize: 19, fontWeight:FontWeight.bold)),
                          ),                      
                          DropdownButton<String>(
                                        value: dropdownValue,
                                        icon: const Icon(Icons.arrow_drop_down_rounded),
                                        elevation: 16,
                                        style: const TextStyle(color: Colors.black,fontSize: 18),
                                        underline: Container(
                                          height: 2,
                                          color: Colors.lightGreen,
                                        ),
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            dropdownValue = newValue!;
                                          });
                                        },
                                        items: <String>['Selecciona una categoria', 'Carne', 'Frutas', 'Vegetales']
                                            .map<DropdownMenuItem<String>>((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right:8.0, top:10),
                      child: Row(
                        children: [                                           
                          const Padding(                       
                            padding:EdgeInsets.only(right:29.0,),
                            child: Text("Etiqueta:",  style: TextStyle( fontSize: 19, fontWeight:FontWeight.bold)),
                          ),                      
                          DropdownButton<String>(
                                        value: dropdownValuee,
                                        icon: const Icon(Icons.arrow_drop_down_rounded),
                                        elevation: 16,
                                        style: const TextStyle(color: Colors.black,fontSize: 18),
                                        underline: Container(
                                          height: 2,
                                          color: Colors.lightGreen,
                                        ),
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            dropdownValuee = newValue!;
                                          });
                                        },
                                        items: <String>['Selecciona una etiqueta', 'Carne', 'Frutas', 'Vegetales']
                                            .map<DropdownMenuItem<String>>((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top:18.0),
                          child: Text("Descripción:",  style: TextStyle( fontSize: 19, fontWeight:FontWeight.bold)),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        Container(
                          height:100,
                          width: MediaQuery.of(context).size.width*19/20,
                          padding: const EdgeInsets.only(bottom: 25, top: 10),
                          child: Row(
                            children: const [
                              Flexible(
                                child: TextField(                                       
                                      decoration: InputDecoration(                                                    
                                        hintText: 'Ingresar una descripción',
                                      )
                                    )
                              )
                          ],),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.lightGreen,                    
                                elevation: 2.0,
                              ),
                              onPressed:  () => Navigator.of(context).pop(),
                              child: Container(
                                padding: const EdgeInsets.all(15),
                                child: const Text("Crear producto", style: TextStyle(fontSize: 16)))),
                      ],
                    )
                  ],
                ),
              ),
            ),
      ),
    );
    
  }
   Future _selectImage(ImageSource source) async {
    XFile? pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      _imagen = File(pickedFile.path);
    } else {
      _imagen = null;
      //print('No image selected.');
    }
    setState(() {});
  }
}