import 'package:flutter/material.dart';
import 'package:flutter_application_1/componenets/gender_selector.dart';
import 'package:flutter_application_1/componenets/height_selector.dart';
import 'package:flutter_application_1/componenets/number_selector.dart';

class ImcHomeScreen extends StatefulWidget {
  const ImcHomeScreen({super.key});//contructor

  @override
  State<ImcHomeScreen> createState() => _ImcHomeScreenState();
}

class _ImcHomeScreenState extends State<ImcHomeScreen> {
  int? selectedAge;//Colocamos estas variables aqui para manejar los datos que coloque el usuario
  int? selectedWeight;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        GenderSelector(),
        HeightSelector(),

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children: [
            Expanded(child: NumberSelector(title: "PESO")),
            SizedBox(width: 16),// Para tener espacio entre ambos contenedores
            Expanded(child: NumberSelector(title: "EDAD"))
          ],),
        )
        
      ],
    );
  }
}