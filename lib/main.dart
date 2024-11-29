import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart'; // 4.) package needed for runApp flutter function.

// 1.) create main() function which wil be automatically executed by Flutter
void main() {
  // 2.) runApp() special function creation inside of main() function
  runApp(
    // 3.) need to pass a widget for runApp and it uses the MaterialApp widget-
    //      most commonly the MaterialApp widget.
    const Quiz(),
  );
}
