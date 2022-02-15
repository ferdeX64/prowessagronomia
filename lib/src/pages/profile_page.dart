import 'dart:async';
import 'package:flutter/material.dart';
import 'package:prowessagronomia/src/pages/edit_description.dart';
import 'package:prowessagronomia/src/pages/edit_email.dart';
import 'package:prowessagronomia/src/pages/edit_image.dart';
import 'package:prowessagronomia/src/pages/edit_name.dart';
import 'package:prowessagronomia/src/pages/edit_phone.dart';
import 'package:prowessagronomia/src/user/user.dart';
import 'package:prowessagronomia/src/user/user_data.dart';
import 'package:prowessagronomia/src/widgets/display_image_widget.dart';
import 'package:prowessagronomia/src/widgets/widget_drawer.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey(); 
    final user = UserData.myUser;
    return SafeArea(
      child: Scaffold(
        key: _key,
        drawer: const MenuLateral(),
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
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: ()=> _key.currentState!.openDrawer(),
          ),
        ),
        body: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top:20,bottom: 20),
                child: Text(
                  'Mi Cuenta',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                )
              )
            ),
            InkWell(
              onTap: () {
                navigateSecondPage(const EditImagePage());
              },
              child: DisplayImage(
                imagePath: user.image,
                onPressed: () {},
              )
            ),
            buildUserInfoDisplay(user.name, 'Nombre', const EditNameFormPage()),
            buildUserInfoDisplay(user.phone, 'Telefono', const EditPhoneFormPage()),
            buildUserInfoDisplay(user.email, 'Correo', const EditEmailFormPage()),
            Expanded(
              child: buildAbout(user),
              flex: 4,
            )
          ],
        ),
      ),
    );
  }

  Widget buildUserInfoDisplay(String getValue, String title, Widget editPage) =>
      Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Container(
              width: 350,
              height: 40,
              decoration: const BoxDecoration(
                color: Colors.lightGreenAccent,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 1,
                  )
                )
              ),
              child: Row(children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      navigateSecondPage(editPage);
                    },
                    child: Text(
                      getValue,
                      style: const TextStyle(fontSize: 16, height: 1.4),
                    )
                  )
                ),
                const Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.grey,
                  size: 40.0,
                )
              ])
            )
          ],
        )
      );

  Widget buildAbout(User user) => Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Acerca de mi',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 1),
        Container(
          width: 350,
          height: 75,
          decoration: const BoxDecoration(
            color: Colors.lightGreenAccent,
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
                width: 1,
              )
            )
          ),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    navigateSecondPage(const EditDescriptionFormPage());
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        user.aboutMeDescription,
                        style: const TextStyle(
                          fontSize: 16,
                          height: 1.4,
                        ),
                      )
                    )
                  )
                )
              ),
              const Icon(
                Icons.keyboard_arrow_right,
                color: Colors.grey,
                size: 40.0,
              )
            ]
          )
        )
      ],
    )
  );

  FutureOr onGoBack(dynamic value) {
    setState(() {});
  }

  void navigateSecondPage(Widget editForm) {
    Route route = MaterialPageRoute(builder: (context) => editForm);
    Navigator.push(context, route).then(onGoBack);
  }
}