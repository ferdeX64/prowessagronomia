import 'package:flutter/material.dart';
import 'package:prowessagronomia/src/user/user_data.dart';
import 'package:string_validator/string_validator.dart';

class EditPhoneFormPage extends StatefulWidget {
  const EditPhoneFormPage({Key? key}) : super(key: key);
  @override
  EditPhoneFormPageState createState() {
    return EditPhoneFormPageState();
  }
}

class EditPhoneFormPageState extends State<EditPhoneFormPage> {
  final _formKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();
  var user = UserData.myUser;

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  void updateUserValue(String phone) {
    String formattedPhoneNumber = "(" +
      phone.substring(0, 3) +
      ") " +
      phone.substring(3, 6) +
      "-" +
      phone.substring(6, phone.length);
    user.phone = formattedPhoneNumber;
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(top: 25),
                      child: Center(
                        child: Text(
                          "Ingrese su numero de telefono",
                          style:TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold
                          ),
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: SizedBox(
                      height: 100,
                      width: 320,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Porfavor ingrese su numero de telefono';
                          } else if (isAlpha(value)) {
                            return 'Solo numeros porfavor';
                          } else if (value.length < 10) {
                            return 'Porfavor Ingrese un numero VALIDO';
                          }
                          return null;
                        },
                        controller: phoneController,
                        decoration: const InputDecoration(
                          labelText: 'Número Telefono',
                        ),
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
                                isNumeric(phoneController.text)) {
                              updateUserValue(phoneController.text);
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
                ]),
          )),
    );
  }
}
