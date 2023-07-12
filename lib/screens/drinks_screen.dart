import 'package:flutter/material.dart';

class DrinksScreen extends StatelessWidget {
  const DrinksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
          crossAxisCount: 2,
          children: 
          [
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

  Widget oneCard(BuildContext context){
    return GestureDetector(
           onTap: () {
            Navigator.pop(context);
           },
           child: const SizedBox(
             height: 100,
             child: Card(
               elevation: 10,
               color: Colors.cyanAccent,
               child: Text('This is clickable card, tap me'),
             ),
           ),
    );
  }
}