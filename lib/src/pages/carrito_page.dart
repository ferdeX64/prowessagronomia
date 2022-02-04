import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';


class CarritoPage extends StatefulWidget {
  const CarritoPage({Key? key}) : super(key: key);

  @override
  _CarritoPageState createState() => _CarritoPageState();
}

class _CarritoPageState extends State<CarritoPage> {

  @override
  Widget build(BuildContext context) {
    double totalPrice = 0;
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
      body: ListView.separated(
          itemBuilder: (BuildContext context,int index){
            return Slidable(
              key: const ValueKey(0),
              startActionPane: const ActionPane(
                motion: ScrollMotion(),
                children: [
                  SlidableAction(
                    onPressed: doNothing,
                    backgroundColor: Color(0xFFFE4A49),
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Delete',
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:25.0, vertical: 10),
                child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: <Widget>[
                        SizedBox(
                           height: 100,
                        width: 100,
                        child: Image.asset('assets/images/sandia.jpg',
                            fit: BoxFit.cover)
                        ),
                      ],
                    ),
                    Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                      children: const[
                        Text(
                          'Estimated Delivery Time:  ',
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                         Text(
                          '25 min',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      children: [
                        const Text(
                          'Total Cost: ',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        Text(
                          '\$${totalPrice.toStringAsFixed(2)}',
                          style: TextStyle(
                              color: Colors.green[700],
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 80.0,)
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context,int index){
            return const Divider(
              height: 1.0,
              color: Colors.grey,
            );
          },
          itemCount: 5
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 75.0,
            width: 175.0,
            decoration: const BoxDecoration(
                color: Colors.lightGreenAccent,
                boxShadow: [
                   BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0,-1),
                      blurRadius: 5.0
                  ),
                ]
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.add_shopping_cart_rounded),
                  TextButton(
                    child: const Text(
                      'Siguiente',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0
                      ),
                    ),
                    onPressed: (){},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
void doNothing(BuildContext context) {}