import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
        //centerTitle: false,
        leadingWidth: 100,
        leading: Text(
          'HI WATER',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        actions: [
          hour(),
        ],
      ),
      body: SizedBox(
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
    );
  }

  Widget _verticalGap(){
    return const SizedBox(
      height: 5.5,
    );
  }

  Widget hour(){
    //DateTime now = DateTime.now();
    String formattedTime = DateFormat.Hm().format(DateTime.now());
    return Text(
      formattedTime,
      style: Theme.of(context).textTheme.bodySmall,
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
        constraints: const BoxConstraints.tightFor(width: 100, height: 26.5),
        child: ElevatedButton(
          onPressed: () { },
          child: const Text('Registrar'),
        ),
      ),
    );
  }
  
  Widget _percentage(){
  //final customColors = Theme.of(context).extension<CustomTheme>()!;

    return Column(
      children: [
        SizedBox(
          height: 60,
          child: Stack(
            children: [
              const Center(
                child:  SizedBox(
                  width: 45,
                  height: 45,
                  child: CircularProgressIndicator(
                    strokeWidth: 6,
                    value: 0.3, // entre 0 y 1 3E8BEC 11324A
                    color: Color.fromARGB(255, 62, 139, 236),
                    backgroundColor: Color.fromARGB(255, 17, 50, 74),
                  ),
                ),
              ),
              
                Positioned(
                  bottom: 0,
                  left: 10,
                  right: 10,
                  top: 22,
                  child: Text(
                    '0%',
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  ),
                ),
            
            ],
          ),
        ),
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
        const IntervalProgressBar(),
        Text(
          'Hidratación',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }


}

