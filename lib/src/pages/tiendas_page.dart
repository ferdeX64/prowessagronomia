import 'package:flutter/material.dart';
import 'package:prowessagronomia/src/widgets/panel_widget.dart';
import 'package:prowessagronomia/src/widgets/widget_drawer.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
class StorePage extends StatefulWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return
    SafeArea(
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
            actions: <Widget>[
              IconButton(
                padding: EdgeInsets.zero,
                icon: const Icon(Icons.account_box_rounded),
                iconSize: 40.0,
                tooltip: 'Registrar Cuenta',
                color: Colors.black,
                onPressed: () {},
              ),
            ]),
            body: SlidingUpPanel(
              body:
            const Text("Wigedt menu slide"),
            panelBuilder: (controller)=>PanelWidget(
              controller:controller,
            ),
        ),
        drawer: MenuLateral(),
      ),
    );
    
  }
}