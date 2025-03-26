import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_color.dart';
import 'package:flutter_application_1/core/text_styles.dart';

class HeightSelector extends StatefulWidget {
  const HeightSelector({super.key});

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  double  height = 168;//Altura inicial

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
            Text("${height.toStringAsFixed(0)}cm" //toStringAsFixed converrtimos en entero el valor par poner que nos muestre 0 decimales y se vea solo el numero entero
            ,style: TextStyle(
              color:Colors.black,
              fontSize: 38,
              fontWeight: FontWeight.bold
            ),
            ),
            //Barra para ajustar la estatura
            Slider(value: height,//Ponemos el valor
            onChanged: (newH){//Modificamops el valor para que la barra se mueva
              setState(() { //setState siempre que se requiera modificar el Ui
                height = newH;
              });
            },
            min:100 ,
            max:220 ,
            divisions: 120,//Para la cantidad de pasos que podra moverse la barra 
            label: "${height.toStringAsFixed(0)}cm",//Aparece una burbuja al mover la barra por lo general se pone la variable para ver el valor si no estubiar mostrado
           activeColor: AppColors.primary,
            )
                  ],
        ),
      ),
    );
  }
}