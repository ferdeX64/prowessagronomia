import 'package:flutter/material.dart';
import 'package:prowessagronomia/src/user/user_data.dart';
import 'package:string_validator/string_validator.dart';

class EditNameFormPage extends StatefulWidget {
  const EditNameFormPage({Key? key}) : super(key: key);

  @override
  EditNameFormPageState createState() {
    return EditNameFormPageState();
  }
}

class EditNameFormPageState extends State<EditNameFormPage> {
  final _formKey = GlobalKey<FormState>();
  final firstNameController = TextEditingController();
  final secondNameController = TextEditingController();
  var user = UserData.myUser;

  @override
  void dispose() {
    firstNameController.dispose();
    super.dispose();
  }

  void updateUserValue(String name) {
    user.name = name;
  }

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
        body: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 25),
                child: Center(
                  child: Text(
                    "Ingrese sus Datos",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: SizedBox(
                  height: 100,
                  width: 250,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Porfavor ingrese su Nombre';
                      } else if (!isAlpha(value)) {
                        return 'Solo puede ingresar letras...';
                      }
                      return null;
                    },
                    decoration:
                        const InputDecoration(labelText: 'Nombre'),
                    controller: firstNameController,
                  )
                )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 100,
                  width: 250,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Porfavor ingrese su Apellido';
                      } else if (!isAlpha(value)) {
                        return 'Solo puede ingresar letras...';
                      }
                      return null;
                    },
                    decoration:
                        const InputDecoration(labelText: 'Apellido'),
                    controller: secondNameController,
                  )
                )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: 150,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate() &&
                            isAlpha(firstNameController.text +
                                secondNameController.text)) {
                          updateUserValue(firstNameController.text +
                              " " +
                              secondNameController.text);
                        Navigator.pop(context);
                        }
                      },
                      child: const Text(
                        'Actualizar',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  )
                )
              )
            ],
          ),
        )
      ),
    );
  }
}