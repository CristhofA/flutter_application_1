import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_color.dart';
import 'package:flutter_application_1/core/text_styles.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
String? selectedGender;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Hombre
        Expanded(
          child: GestureDetector(
            onTap:(){
              setState(() {//Llamar a setState siempre que se modifique la UI
                selectedGender = "Hombre";
              });
            },
            child: Padding(//Padding para tener espacios
              padding: const EdgeInsets.only(left: 16,top: 16,right:8,bottom: 16),
              child: Container(
                decoration: BoxDecoration(
                  color: selectedGender=="Hombre" 
                        ?AppColors.BackgroundsComponentSelected
                        : AppColors.BackgroundsComponents,
                  borderRadius: BorderRadius.circular(16) 
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Image.asset("assets/images/male.png", height: 100),
                      SizedBox(height: 8),
                      Text("Hombre".toUpperCase(),//Para poner en mayuscula es el toUppercase 
                      style: TextStyle(color:Colors.black,
                                        fontSize:18 )
                      
                      ,)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        //Mujer
        Expanded(
          child: GestureDetector(
            onTap: (){
              setState(() {
                selectedGender = "Mujer";
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 8,top: 16,right: 16,bottom: 16),
              child: Container(
                decoration: BoxDecoration(
                  color: selectedGender=="Mujer"
                      ?AppColors.BackgroundsComponentSelected
                      :AppColors.BackgroundsComponents,
                  borderRadius: BorderRadius.circular(16)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Image.asset("assets/images/female.png", height: 100),
                      SizedBox(height: 8),//espacio vertical de 8 píxeles entre la imagen y el texto.
                      Text("Mujer".toUpperCase(),style: TextStyles.bodyText)//llamar a la funcion de texto
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}