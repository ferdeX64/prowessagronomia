import 'package:flutter/material.dart';
import 'package:prowessagronomia/src/user/user_data.dart';

class EditDescriptionFormPage extends StatefulWidget {
  const EditDescriptionFormPage({Key? key}) : super(key: key);

  @override
  _EditDescriptionFormPageState createState() =>
      _EditDescriptionFormPageState();
}

class _EditDescriptionFormPageState extends State<EditDescriptionFormPage> {
  final _formKey = GlobalKey<FormState>();
  final descriptionController = TextEditingController();
  var user = UserData.myUser;

  @override
  void dispose() {
    descriptionController.dispose();
    super.dispose();
  }

  void updateUserValue(String description) {
    user.aboutMeDescription = description;
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
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(25),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 25,bottom:25),
                  child: Center(
                    child: Text(
                      "Actualizar Datos Sobre mi",
                      style:TextStyle(
                        fontSize: 25,
                        fontWeight:
                        FontWeight.bold
                      ),
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: SizedBox(
                    height: 150,
                    width: 350,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value == null ||value.isEmpty ||value.length > 200) {
                          return 'Por favor la descripcion no debe sobrepasar las 200 palabras';
                        }
                        return null;
                      },
                      controller: descriptionController,
                      textAlignVertical: TextAlignVertical.top,
                      decoration: const InputDecoration(
                        alignLabelWithHint: true,
                        contentPadding:EdgeInsets.fromLTRB(10, 15, 10, 100),
                        hintMaxLines: 3,
                        hintText:''
                      ),
                    )
                  )
                ),
                Padding(
                  padding: const EdgeInsets.only(top:10),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: 150,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            updateUserValue(descriptionController.text);
                            Navigator.pop(context);
                          }
                        },
                        child: const Text(
                          'Actualizar',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    )
                  )
                )
              ]
            ),
          ),
        )
      ),
    );
  }
}
