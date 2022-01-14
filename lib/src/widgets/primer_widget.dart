import 'package:flutter/material.dart';

class MaterialesWidget extends StatelessWidget {
  const MaterialesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7.0, vertical: 14.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            /*const Icon(Icons.cable, size: 50.0),
            Text('Materiales', style: Theme.of(context).textTheme.headline4),*/
          ],
        ),
      ),
    );
  }
}
