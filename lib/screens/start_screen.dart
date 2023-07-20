import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:water_counter_test/screens/drinks_screen.dart';

//import 'package:wear/wear.dart';

import '../assets/circular_indicator.dart';
import '../assets/interval_progress_bar.dart';

//import '../assets/custom_theme.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StatefulWidget> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
   
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 16.0,
        leadingWidth: 100,
        leading: Text(
          'HI WATER',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        actions: [
          hour(),
        ],
      ),
      body: 
      /*WatchShape(
        builder: (BuildContext context, WearShape shape, Widget? child) {
          return */
          SizedBox(
            height: 160.0,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _totalMl(),
                  _verticalGap(),
                  _indicators(),
                  _verticalGap(),
                  _logButton(),
                ],
            ),
          ),
         // );
        //}
      //),
    );
  }

  Widget _verticalGap(){
    return const SizedBox(
      height: 5.5,
    );
  }

  Widget hour(){
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

  Widget _totalMl(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 25.0,
          child: Text(
              '0 mL',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
        ),
        Text(
            'Faltan 2550 mL',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
      ],
    );
  }

  Widget _indicators(){
    return IntrinsicHeight(
      child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   _percentage(),    
                   const SizedBox(
                    width: 10,
                   ),
                   _smallDivider(),
                   const SizedBox(
                    width: 10,
                   ),          
                   _hydration(),
                ],
      ),
    );    
  }

  Widget _logButton(){
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints.tightFor(width: 100, height: 28.0),
        child: ElevatedButton(
          onPressed: () { 
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  DrinksScreen()),
            );
          },
          child: const Text('Registrar'),
        ),
      ),
    );
  }
  
  Widget _percentage(){
  //final customColors = Theme.of(context).extension<CustomTheme>()!;

    return Column(
      children: [
        const CircularIndicator(),
        Text(
             'Hoy',
             style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }



Widget _smallDivider(){
  return const VerticalDivider(
      color: Color.fromARGB(255, 51, 51, 51),
      thickness: 1,
      width: 20,
      indent: 10,
      endIndent: 0,
    );
}

  Widget _hydration(){
    return Column(
      children: [
        const IntervalProgressBar(value: 1),
        Text(
          'Hidratación',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }


}

