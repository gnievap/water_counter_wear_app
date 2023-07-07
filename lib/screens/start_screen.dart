import 'package:flutter/material.dart';

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
        toolbarHeight: 10.0,
        centerTitle: false,
        leadingWidth: 0,
        title:  Text(
          'HI WATER',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _totalMl(),
          
            _indicators(),
  
            _logButton(),
          ],
      ),
    );
  }

  Widget _totalMl(){
    return Column(
      children: [
        Text(
            '0 mL',
            style: Theme.of(context).textTheme.headlineSmall,
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
        //_intervalBar(),
        Text(
          'Hidratación',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }


}

