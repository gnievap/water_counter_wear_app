import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DrinksScreen extends StatelessWidget {
 
   DrinksScreen({Key? key}) : super(key: key);

  final List<dynamic> typesOfDrinks = [
    ['240 mL', 'Un vaso de agua',     const Color.fromARGB(255, 26, 49, 70), const Color.fromARGB(255, 139, 215, 255)],
    ['550 mL', 'Una botella de agua', const Color.fromARGB(255, 26, 49, 70), const Color.fromARGB(255, 139, 215, 255)],
    ['240 mL', 'Una taza de té',      const Color.fromARGB(255, 67, 47, 19), const Color.fromARGB(255, 255, 207, 115)],
    ['250 mL', 'Un vaso de leche',    const Color.fromARGB(255, 54, 34, 69), const Color.fromARGB(255, 230, 164, 255)],
    ['200 mL', 'Una taza de café',    const Color.fromARGB(255, 67, 47, 19), const Color.fromARGB(255, 255, 207, 115)],
    ['200 mL', 'Leche saborizada',    const Color.fromARGB(255, 64, 31, 44), const Color.fromARGB(255, 255, 157, 200)],
    ['200 mL', 'Un vaso de refresco', const Color.fromARGB(255, 32, 29, 69), const Color.fromARGB(255, 159, 147, 255)],
    ['200 mL', 'Leche desnatada',     const Color.fromARGB(255, 71, 59, 24), const Color.fromARGB(255, 255, 249, 130)],
  ];

  // Colores de las tarjetas:
  // back: 26, 49, 70, font: 139, 215, 255
  // back: 67, 47, 19, font: 255, 207, 115
  // back: 54, 34, 69, font: 230, 164, 255
  // back: 64, 31, 44, font: 255, 157, 200


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        toolbarHeight: 16.0,
        //centerTitle: false,
        leadingWidth: 100,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
           },
          child: Text(
            'Cancel',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        actions: [
          hour(context),
        ],
      ),
        body: 
          GridView.count(
            primary: false,
            padding: const EdgeInsets.all(5),
            crossAxisSpacing: 3,
            mainAxisSpacing: 5,
            crossAxisCount: 2,
            children: 
            [
              oneCard(context, 0),
              oneCard(context, 1),
              oneCard(context, 2),
              oneCard(context, 3),
              oneCard(context, 4),
              oneCard(context, 5),
              oneCard(context, 6),
              oneCard(context, 7),
            ],
          ),
      );
  }

   Widget hour(BuildContext context){
    return StreamBuilder(
      stream: Stream.periodic(const Duration(seconds: 1)),
      builder: (context, snapshot) {
        return Text(
          DateFormat.Hm().format(DateTime.now()),
          style: Theme.of(context).textTheme.bodySmall,
          );
      },
    ); 
    
  }

  Widget oneCard(BuildContext context, int type){
    return GestureDetector(
           onTap: () {
            Navigator.pop(context);
           },
           child: Center(
             child: SizedBox(
               width: 100.0,
               //height: 60.0,
               child: 
                Card(
                  elevation: 10.0,
                  color: typesOfDrinks[type][2],
                  //color: const Color.fromARGB(255, 22, 45, 67),
                  shape: RoundedRectangleBorder(
                      side:  BorderSide(
                        color: typesOfDrinks[type][2],
                      ),
                      borderRadius: BorderRadius.circular(10.0), 
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          typesOfDrinks[type][0],
                          textAlign: TextAlign.center,
                          style:  TextStyle(
                            fontWeight: FontWeight.bold,
                            color: typesOfDrinks[type][3], 
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          typesOfDrinks[type][1],
                          style:  TextStyle(
                            color: typesOfDrinks[type][3],
                            fontSize: 10, 
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                  ),
                ),
                     // ),
               ),
           ),
    );
  }
}