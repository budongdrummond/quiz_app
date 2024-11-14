import 'package:flutter/material.dart'; // 3.) package needed for runApp flutter function.
import 'package:quiz_app/start_screen.dart';

// 1.) create main() function which wil be automatically executed by Flutter
void main() {
  // 2.) runApp() special function creation inside of main() function
  runApp(
    // 4.) need to pass a widget - most commonly the MaterialApp widget.
    MaterialApp(
      // 5.) add an argument to display a widget as MaterialApp widget is only a shell widget
      home: Scaffold(
        // 6.) add body argument that accept a widget - which is the 'start' screen widget
        //      in this instance - it uses special/custom function widget 'start screen'
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 45, 3, 96),
                Color.fromARGB(255, 81, 22, 91)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: const StartScreen(), // 7.) call the next custom widget
        ),
      ),
    ),
  );
}
