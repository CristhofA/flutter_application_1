import 'package:flutter/material.dart';
import 'package:flutter_application_1/componenets/gender_selector.dart';

class ImcHomeScreen extends StatefulWidget {
  const ImcHomeScreen({super.key});//contructor

  @override
  State<ImcHomeScreen> createState() => _ImcHomeScreenState();
}

class _ImcHomeScreenState extends State<ImcHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        GenderSelector(),
      ],
    );
  }
}