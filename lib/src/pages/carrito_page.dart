import 'package:flutter/material.dart';


class CarritoPage extends StatefulWidget {
  const CarritoPage({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CarritoPage> {


  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      home: Home()
    );
  }
}


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    double totalPrice = 0;
   
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrito (${6})'),
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context,int index){
           
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const[
                      Text(
                        'Estimated Delivery Time',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                       Text(
                        '25 min',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Total Cost',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      Text(
                        '\$${totalPrice.toStringAsFixed(2)}',
                        style: TextStyle(
                            color: Colors.green[700],
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 80.0,)
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context,int index){
            return const Divider(
              height: 1.0,
              color: Colors.grey,
            );
          },
          itemCount: 6+1),
      bottomSheet: Container(
        height: 100.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            boxShadow: const[
               BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0,-1),
                  blurRadius: 5.0
              ),
            ]
        ),
        child: Center(
          child: TextButton(
            child: const Text(
              'CHECKOUT',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0
              ),
            ),
            onPressed: (){},
          ),
        ),
      ),
    );
  }
}
