import 'package:flutter/material.dart';
import 'package:prowessagronomia/src/pages/stores_details_page.dart';
class PanelWidget extends StatelessWidget {
  final ScrollController controller;
  final numbers =List.generate(4,(index)=>'$index');
  PanelWidget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context)=>
  InkWell(                        
        child:  Container(
    decoration:const  BoxDecoration(
      color: Colors.lightGreenAccent,
      borderRadius: BorderRadius.only(
    topLeft: Radius.circular(24.0),
    topRight: Radius.circular(24.0),
      
    )),
   
    width: 10,
    child: ListView(
      
    children: <Widget>[
      Container(
        padding:const  EdgeInsets.symmetric(vertical: 15),
        height: 50,
        color: Colors.transparent,
        child: const Text('        Todas las tiendas:',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black54)),
      ),
      
      const SizedBox(height: 14),
          buildAboutText(),
          const SizedBox(height: 24),
    ],
    ),
     ),                        
        onTap: () {                          
        Navigator.push<void>(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) =>
                  const StorePageDetails(),
            ),
          );
        },                      
     );
 
  
  Widget buildAboutText()=>GridView.builder(
           
    shrinkWrap: true,
            gridDelegate: const  SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
              mainAxisSpacing: 30,
              crossAxisSpacing:30 
            ) ,
            controller: controller,
            padding:const EdgeInsets.symmetric(horizontal: 30),
            itemCount: numbers.length,
            itemBuilder: (contex,index){
              final item=numbers[index];
              return buildNumber(item);
              
            },
  );
  Widget buildNumber(String number)=>
  
  Container(
   
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1, color: Colors.black38),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
    
    padding: const EdgeInsets.all(16),
  
    child: GridTile(
      
      header:Image.asset('assets/images/tienda.jpg', height: 60),
      child: const Center(
        
        ),
        footer:Text(
          'Tienda $number',
          textAlign: TextAlign.center,
        )
    )
    
  );
}