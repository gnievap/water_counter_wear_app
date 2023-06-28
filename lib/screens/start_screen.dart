import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StatefulWidget> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {

  final TextStyle estiloTexto = const TextStyle(
      decoration: TextDecoration.none,
      fontSize: 25,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );
    
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
      backgroundColor: Colors.black,
    );
  }

  Widget _totalMl(){
    return Center(
            child: Text(
              '0 mL',
              style: estiloTexto,
              ),
          );
  }

  Widget _indicators(){
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '0 %',
                style: estiloTexto,
              ),
              Text(
                '0.0',
                style: estiloTexto,
              ),
            ],
          );    
  }

  Widget _logButton(){
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
        backgroundColor: Colors.indigo, 
        foregroundColor: Colors.white, 
      ),
      onPressed: () { },
      child: const Text('Registrar'),
    ),
    );
  }
  /*        
         
  }*/
}

