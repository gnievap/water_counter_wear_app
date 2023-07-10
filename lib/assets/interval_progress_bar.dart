
import 'package:flutter/material.dart';

class IntervalProgressBar extends StatefulWidget {
  const IntervalProgressBar({Key? key}) : super(key: key);

  @override
  State<IntervalProgressBar> createState() => 
  _IntervalProgressBarState();
}

class _IntervalProgressBarState extends 
State<IntervalProgressBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _bar(),
        const SizedBox(
          width: 8,
        ),
        _label(),
      ],
    );
  }

  Widget _bar(){
    // dark colors
    // 22, 45, 67
    // 28, 55, 53
    // 33, 59, 34
    // 42, 59, 17
    // 50, 59, 18
    // 63, 60, 21
    // 71, 57, 9
    // 75, 51, 9
    // 77, 40, 15
    // 71, 29, 23


    // bright colors
    // 66, 144, 255
    // 94, 173, 167
    // 118, 188, 116
    // 145, 186, 62
    // 169, 183, 60
    // 192, 181, 60
    // 230, 190, 64
    // 237, 169, 59
    // 235, 138, 60
    // 229, 95, 72

    return Column(
      children: [

        _interval(customColor: const Color.fromARGB(255, 22, 45, 67)),
        _separator(),
        _interval(customColor: const Color.fromARGB(255, 28, 55, 53)),
        _separator(),
        _interval(customColor: const Color.fromARGB(255, 33, 59, 34)),
        _separator(),
        _interval(customColor: const Color.fromARGB(255, 42, 59, 17)),
        _separator(), 
        _interval(customColor: const Color.fromARGB(255, 50, 59, 18)),
        _separator(),
        _interval(customColor: const Color.fromARGB(255, 63, 60, 21)),
        _separator(),
        _interval(customColor: const Color.fromARGB(255, 71, 57, 9)),
        _separator(),
        _interval(customColor: const Color.fromARGB(255, 75, 51, 9)),
        _separator(),
        _interval(customColor: const Color.fromARGB(255, 77, 40, 15)),
        _separator(),
        _interval(customColor: const Color.fromARGB(255, 71, 29, 23)),

        // _interval(customColor: const Color.fromARGB(255, 66, 144, 255)),
        // _separator(),
        // _interval(customColor: const Color.fromARGB(255, 94, 173, 167)),
        // _separator(),
        // _interval(customColor: const Color.fromARGB(255, 118, 188, 116)),
        // _separator(),
        // _interval(customColor: const Color.fromARGB(255, 145, 186, 62)),
        // _separator(), 
        // _interval(customColor: const Color.fromARGB(255, 169, 183, 60)),
        // _separator(),
        // _interval(customColor: const Color.fromARGB(255, 192, 181, 60)),
        // _separator(),
        // _interval(customColor: const Color.fromARGB(255, 230, 190, 64)),
        // _separator(),
        // _interval(customColor: const Color.fromARGB(255, 237, 169, 59)),
        // _separator(),
        // _interval(customColor: const Color.fromARGB(255, 235, 138, 60)),
        // _separator(),
        // _interval(customColor: const Color.fromARGB(255, 229, 95, 72)),
      ],
    );
  }

  Widget _interval({required Color customColor}){
    return  SizedBox(
      width: 15.0,
      height: 3.8,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: customColor,
        )
        ),
    );
  }

  Widget _separator(){
    return const SizedBox(
          height: 2.2,
        );
  }


  Widget _label() {
    return 
        Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              '1.0',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        );
  }

}