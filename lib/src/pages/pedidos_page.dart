import 'package:date_range_form_field/date_range_form_field.dart';
import 'package:flutter/material.dart';
class PedidosPage extends StatefulWidget {
  const PedidosPage({Key? key}) : super(key: key);

  @override
  State<PedidosPage> createState() => _PedidosPageState();
}
GlobalKey<FormState> myFormKey = new GlobalKey();
class _PedidosPageState extends State<PedidosPage> {
  String dropdownValue = 'Clientes registrado';
  DateTimeRange? myDateRange;

  void _submitForm() {
    final FormState? form = myFormKey.currentState;
    form!.save();
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
            child: Column(
              children: [
                const Padding(
                  padding:  EdgeInsets.symmetric(vertical:12.0),
                  child:  Text("Pedidos",  style: TextStyle( fontSize: 40, fontWeight:FontWeight.bold)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.lightGreen,
                      ),
                      child: Container(
                        child: Row(
                          children: const[
                            Text("Todo (0)",style: TextStyle(fontSize: 14)),
                          ],
                        )
                      ),
                      onPressed: (){                    
                      },
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.lightGreen,
                      ),
                      child: Container(
                        child: Row(
                          children: const[
                            Text("Completado (0)",style: TextStyle(fontSize: 14)),
                          ],
                        )
                      ),
                      onPressed: (){                    
                      },
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.lightGreen,
                      ),
                      child: Container(
                        child: Row(
                          children: const[
                            Text("En proceso (0)",style: TextStyle(fontSize: 14)),
                          ],
                        )
                      ),
                      onPressed: (){                    
                      },
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.lightGreen,
                      ),
                      child: Container(
                        child: Row(
                          children: const[
                            Text("En espera (0)",style: TextStyle(fontSize: 14)),
                          ],
                        )
                      ),
                      onPressed: (){                    
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.lightGreen),
                       borderRadius: BorderRadius.circular(10),
                    ),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [                       
                          const Text("Filtrar por:",style: TextStyle(fontSize: 18, fontWeight:FontWeight.bold)),
                          Padding(
                            padding: const EdgeInsets.only(top:10.0),
                            child: Row(
                              children: [
                                Flexible(
                                  child: Form(
                                    key: myFormKey,
                                    child: Column(
                                      children: [
                                        SafeArea(
                                          child: DateRangeField(
                                              enabled: true,
                                              initialValue: DateTimeRange(
                                                  start: DateTime.now(),
                                                  end: DateTime.now().add(const Duration(days: 5))),
                                              decoration: const InputDecoration(
                                                labelText: 'Rango de fecha',
                                                prefixIcon: Icon(Icons.date_range),
                                                hintText: 'Selecciona la rango de inicio y final',
                                                border: OutlineInputBorder(),
                                              ),
                                              validator: (value) {
                                                if (value!.start.isBefore(DateTime.now())) {
                                                  return 'Introduce la fecha de inicio';
                                                }
                                                return null;
                                              },
                                              onSaved: (value) {
                                                setState(() {
                                                  myDateRange = value!;
                                                });
                                              }),
                                        ),
                                        
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Cliente",style: TextStyle(fontSize: 18, fontWeight:FontWeight.bold)),
                              const Icon(Icons.arrow_forward_ios_sharp ),
                              DropdownButton<String>(
                                    value: dropdownValue,
                                    icon: const Icon(Icons.arrow_drop_down_rounded),
                                    elevation: 16,
                                    style: const TextStyle(color: Colors.black,fontSize: 18),
                                    underline: Container(
                                      height: 2,
                                      color: Colors.lightGreen,
                                    ),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownValue = newValue!;
                                      });
                                    },
                                    items: <String>['Clientes registrado', 'Luis Simbaña', 'Cristofer Rugel']
                                        .map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                              ),
                            ],
                          ),
                      Center(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.lightGreen,                    
                              elevation: 6.0,
                              shape: const StadiumBorder()
                            ),
                            onPressed: (){},
                            child: const Text("Filtro",style: TextStyle(fontSize: 17, fontWeight:FontWeight.bold))),
                      ),
                      ],
                    ),
                
                  ),
                ),
                 
              ],
            ),
          ),        
      ),
    );
  }
}