import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_color.dart';
import 'package:flutter_application_1/core/text_styles.dart';
//Ejemplo de como reutilizar codigo
class NumberSelector extends StatefulWidget {
  //Si nececito un parametro si o si debo definirlo aqui 
 final String title;

const NumberSelector({super.key,  required this.title});

  @override
  State<NumberSelector> createState() => _NumberSelectorState();
}

class _NumberSelectorState extends State<NumberSelector> {
  @override
  Widget build(BuildContext context) {
    
    return  Container(
      decoration: BoxDecoration(//Para el fondo
          color: AppColors.BackgroundsComponents,
          borderRadius: BorderRadius.circular(16)
        ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(widget.title, style: TextStyles.bodyText,),
            Text("20" ,
            style: TextStyle(
              color:Colors.black,
              fontSize: 38,
              fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,//Para centrar los elementos
              children: [
              FloatingActionButton(onPressed: (){}
              ,shape: CircleBorder(),
              backgroundColor: AppColors.primary,
              child: Icon(Icons.remove, color:Colors.white,),
              ),
              SizedBox(width: 16),//Espacio entre los iconos de mas y menos
              FloatingActionButton(onPressed: (){}
              ,shape: CircleBorder(),
              backgroundColor: AppColors.primary,
              child: Icon(Icons.add, color:Colors.white,),
              
              ),//shape:CricleBorder para hacer circular el boton
        
            ],)
          ],
        ),
      ),
    );
  }
}