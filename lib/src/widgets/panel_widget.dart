import 'package:flutter/material.dart';
class PanelWidget extends StatelessWidget {
  final ScrollController controller;
  final numbers =List.generate(4,(index)=>'$index');
  PanelWidget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context)=>Container(
    color:Colors.lightGreenAccent,
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
  Widget buildNumber(String number)=>Container(
   
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 10, color: Colors.black38),
          borderRadius: const BorderRadius.all(const Radius.circular(8)),
        ),
    
    padding: const EdgeInsets.all(16),
  
    child: GridTile(
      
      header:Image.asset('assets/images/tienda.jpg', height: 60),
      child: Center(
        
        ),
        footer:Text(
          'Tienda $number',
          textAlign: TextAlign.center,
        )
    )
  );
}