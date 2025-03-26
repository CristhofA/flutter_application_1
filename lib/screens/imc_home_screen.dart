import 'package:flutter/material.dart';
import 'package:flutter_application_1/componenets/gender_selector.dart';
import 'package:flutter_application_1/componenets/height_selector.dart';
import 'package:flutter_application_1/componenets/number_selector.dart';
import 'package:flutter_application_1/core/app_color.dart';
import 'package:flutter_application_1/screens/imc_resolt.dart';

class ImcHomeScreen extends StatefulWidget {
  const ImcHomeScreen({super.key}); //contructor

  @override
  State<ImcHomeScreen> createState() => _ImcHomeScreenState();
}

class _ImcHomeScreenState extends State<ImcHomeScreen> {
  int selectedAge =
      20; //Colocamos estas variables aqui para manejar los datos que coloque el usuario
  int selectedWeight = 80;
  double selectedHeight = 168;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenderSelector(),
        HeightSelector(
          selectedHeight: selectedHeight,
          onHeightAge: (newHeiht) {
            setState(() {
              selectedHeight = newHeiht;
            });
          },
        ),

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: NumberSelector(
                  title: "PESO",
                  value: selectedWeight,
                  onIncrement: () {
                    //Aumentar el numero
                    setState(() {
                      selectedWeight++;
                    });
                  },
                  onDecremnet: () {
                    //Disminuir el numero
                    setState(() {
                      selectedWeight--;
                    });
                  },
                ),
              ),
              SizedBox(
                width: 16,
              ), // Para tener espacio entre ambos contenedores

              Expanded(
                child: NumberSelector(
                  title: "EDAD",
                  value: selectedAge,
                  onIncrement: () {
                    setState(() {
                      selectedAge++;
                    });
                  },
                  onDecremnet: () {
                    setState(() {
                      selectedAge++;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            height: 60,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                //Boton para navegar a otra pestaña
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ImcResolt(//El matrialPage Rote y nabigator por defecto no añade la funcioonalidad de regresar a la pestaña principal
                     height: selectedHeight,
                    weight: selectedWeight,
                  )),
                 
                );
              },
              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    //Para hacer un redondeadto al recuadro
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                backgroundColor: WidgetStateProperty.all(AppColors.primary),
              ),
              child: Text(
                "Calcular",
                style: TextStyle(color: const Color(0xFFF8EFED)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
