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
            /*const SizedBox(
              height: 20.0,
            ),*/
            _indicators(),
            /* const SizedBox(
              height: 20.0,
            ),*/
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
                   _smallDivider(),          
                   _hydration(),
                ],
      ),
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
  
  Widget _percentage(){
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

Widget _hydration(){
  return Column(
    children: [
      Text(
            '0.0',
            style: Theme.of(context).textTheme.bodySmall,
      ),
      Text(
            'Hidratación',
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

}

