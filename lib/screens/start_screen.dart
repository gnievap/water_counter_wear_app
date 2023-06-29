import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StatefulWidget> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {


    
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _totalMl(),
            const SizedBox(
              height: 20.0,
            ),
            _indicators(),
             const SizedBox(
              height: 20.0,
            ),
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
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '0 %',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
               Text(
                 '0.0',
                 style: Theme.of(context).textTheme.headlineSmall,
              ),
            ],
          );    
  }

  Widget _logButton(){
    return Center(
      child: ElevatedButton(
        onPressed: () { },
        child: const Text('Registrar'),
      ),
    );
  }
  /*        
         
  }*/
}

