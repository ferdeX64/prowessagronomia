import 'package:flutter/material.dart';


class CarritoPage extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CarritoPage> {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
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

  _buildCartItem(){
    return Container(
      padding: EdgeInsets.all(20.0),
      height: 170.0,
      child: Row(
        children: [
 Image.asset('assets/images/tipos-lacteos.png',fit: BoxFit.contain,     
                  height: 150,
                  width: 150),
          Expanded(
            child: Row(
              children: [
               
                Container(
                  
                  width: 150.0,
                  decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.circular(15.0)
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Lomo de cerdo",
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold
                            ),
                            overflow: TextOverflow.ellipsis),
                        SizedBox(height: 4.0),
                       
                        SizedBox(height: 10.0,),
                        Container(
                          width: 100.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                 width: 0.8,
                                  color: Colors.black54
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('-',
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600
                                  )),
                              Text("Tomate",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600
                                ),),
                              Text('+',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600
                                ),)
                            ],
                          ),

                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Text('\$${3 *2}',
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600
              ),
            ),
          )
        ],
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    double totalPrice = 0;
   
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrito (${6})'),
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context,int index){
           
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
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
                  SizedBox(height: 80.0,)
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context,int index){
            return Divider(
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
            boxShadow: [
              BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0,-1),
                  blurRadius: 5.0
              ),
            ]
        ),
        child: Center(
          child: TextButton(
            child: Text(
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
