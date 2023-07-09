
import 'package:flutter/material.dart';

class CircularIndicator extends StatefulWidget {
  const CircularIndicator({Key? key}) : super(key: key);

  @override
  State<CircularIndicator> createState() => _CircularIndicatorState();
}

class _CircularIndicatorState extends State<CircularIndicator> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: 60,
          child: Stack(
            children: [
              _circle(),
              _label(context),
            ],
          ),
        );
  }

  Positioned _label(BuildContext context) {
    return Positioned(
            bottom: 0,
            left: 10,
            right: 10,
            top: 22,
            child: Text(
                  '100%',
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
            ),
    );
  }

  Widget _circle(){
    return const Center(
        child: SizedBox(
                  width: 53.0,
                  height: 53.0,
                  child: CircularProgressIndicator(
                    strokeWidth: 8.5,
                    value: 0.3, // entre 0 y 1 3E8BEC 11324A
                    color: Color.fromARGB(255, 62, 139, 236),
                    backgroundColor: Color.fromARGB(255, 17, 50, 74),
                  ),
                ),
        );    
  }

}