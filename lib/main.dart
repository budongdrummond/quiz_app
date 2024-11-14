import 'package:flutter/material.dart'; // 3.) package needed for runApp flutter function.
import 'package:quiz_app/start_screen.dart';

// 1.) create main() function which wil be automatically executed by Flutter
void main() {
  // 2.) runApp() special function creation inside of main() function
  runApp(
    // 4.) need to pass a widget - most commonly the MaterialApp widget.
    const MaterialApp(
      // 5.) add an argument to display a widget as MaterialApp widget is only a shell widget
      home: Scaffold(
        // 6.) add body argument that accept a widget - which is the 'start' screen widget
        //      in this instance - it uses special/custom function widget 'HomeContainer'
        body: StartScreen.gradientDrawing(), // 7.)
      ),
    ),
  );
}
