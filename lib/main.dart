import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_color.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Imc Calculator")),
        backgroundColor: AppColors.Backgrounds,
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
