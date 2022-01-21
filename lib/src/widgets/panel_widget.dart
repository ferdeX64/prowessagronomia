import 'package:flutter/material.dart';
class PanelWidget extends StatelessWidget {
  final ScrollController controller;
  final numbers =List.generate(5,(index)=>'$index');
  PanelWidget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context)=>ListView(
  children: <Widget>[
    Container(
      padding:const  EdgeInsets.symmetric(vertical: 5),
      height: 55,
      color: Colors.transparent,
      child: const Center(child: Text('Tiendas',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),)),
    ),
    const SizedBox(height: 14),
        buildAboutText(),
        const SizedBox(height: 24),
  ],
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

    padding: const EdgeInsets.all(16),
    color:Colors.orange,
    child: GridTile(
      header:Text(
        'Header $number',
        textAlign: TextAlign.center,
      ),
      child: Center(
        child:Text(
          number,style:const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          textAlign: TextAlign.center,
        )
        ),
        footer:Text(
          'Footer $number',
          textAlign: TextAlign.center,
        )
    )
  );
}