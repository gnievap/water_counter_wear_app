import 'package:flutter/material.dart';
import 'package:water_counter_test/screens/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Water Counter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0x00000000),
          primaryColor: Colors.indigo,
          textTheme:
            const TextTheme(   //0x89baf3
              headlineSmall: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),   
              bodyMedium: TextStyle(color: Color.fromARGB(255, 137, 186, 243), fontWeight: FontWeight.bold),
            ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
            backgroundColor: Colors.indigo, // background (button) color
            foregroundColor: Colors.white,
            ),
          ),
          useMaterial3: true),
      home:  const StartScreen(),
    );
  }
}