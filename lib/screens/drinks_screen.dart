import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DrinksScreen extends StatelessWidget {
  const DrinksScreen({Key? key}) : super(key: key);

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
        body: GridView.count(
          crossAxisCount: 2,
          children: 
          [
            SizedBox( child: oneCard(context)),
            SizedBox( child: oneCard(context)),
            SizedBox( child: oneCard(context)),
            SizedBox( child: oneCard(context)),
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
           child: //SizedBox(
             //width: 50.0,
            // height: 500.0,
             //child: 
             Card(
               elevation: 10.0,
               color: const Color.fromARGB(255, 22, 45, 67),
               shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: Color.fromARGB(255, 22, 45, 67),
                  ),
                  borderRadius: BorderRadius.circular(20.0), 
               ),
               child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '250 ml',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      'Un vaso de agua',
                      style: Theme.of(context).textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                  ],
               ),
             ),
          // ),
    );
  }
}