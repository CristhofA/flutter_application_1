import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_color.dart';
import 'package:flutter_application_1/core/text_styles.dart';

class HeightSelector extends StatefulWidget {
  final double selectedHeight;
  final Function(double) onHeightAge;
  const HeightSelector({super.key, required this.selectedHeight, required this.onHeightAge});

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:16 ,right: 16),
      child: Container(
        decoration: BoxDecoration(//Para el fondo
          color: AppColors.BackgroundsComponents,
          borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text("ALTURA",style: TextStyles.bodyText),
            ),
            Text("${widget.selectedHeight.toStringAsFixed(0)}cm" //toStringAsFixed converrtimos en entero el valor par poner que nos muestre 0 decimales y se vea solo el numero entero
            ,style: TextStyle(
              color:Colors.black,
              fontSize: 38,
              fontWeight: FontWeight.bold
            ),
            ),
            //Barra para ajustar la estatura
            Slider(value: widget.selectedHeight,//Ponemos el valor
            onChanged: (newH){//Modificamops el valor para que la barra se mueva
             widget.onHeightAge(newH);
            },
            min:100 ,
            max:220 ,
            divisions: 120,//Para la cantidad de pasos que podra moverse la barra 
            label: "${widget.selectedHeight.toStringAsFixed(0)}cm",//Aparece una burbuja al mover la barra por lo general se pone la variable para ver el valor si no estubiar mostrado
           activeColor: AppColors.primary,
            )
                  ],
        ),
      ),
    );
  }
}