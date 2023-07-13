import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DrinksScreen extends StatelessWidget {
  const DrinksScreen({Key? key}) : super(key: key);

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
        leading: Text(
          'Cancel',
          style: Theme.of(context).textTheme.bodySmall,
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
              oneCard(context),
              oneCard(context),
              oneCard(context),
              oneCard(context),
              oneCard(context),
              oneCard(context),
            ],
            // List.generate(6, (index) {
            //   return Center(
            //     child: Text(
            //       'Item $index',
            //       style: Theme.of(context).textTheme.headlineSmall,
            //     ),
            //   );
            // }
            // ),
          ),
      );
  }

   Widget hour(BuildContext context){
    //DateTime now = DateTime.now();
    String formattedTime = DateFormat.Hm().format(DateTime.now());
    return Text(
      formattedTime,
      style: Theme.of(context).textTheme.bodySmall,
    );
    
  }

  Widget oneCard(BuildContext context){
    return GestureDetector(
           onTap: () {
            Navigator.pop(context);
           },
           child: Center(
             child: SizedBox(
               width: 100.0,
               height: 60.0,
               child: 
                Card(
                  elevation: 10.0,
                  color: const Color.fromARGB(255, 22, 45, 67),
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Color.fromARGB(255, 22, 45, 67),
                      ),
                      borderRadius: BorderRadius.circular(10.0), 
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '250 ml',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          'Agua',
                          style: Theme.of(context).textTheme.bodyMedium,
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