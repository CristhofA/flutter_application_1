import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_color.dart';
import 'package:flutter_application_1/core/text_styles.dart';

class ImcResolt extends StatelessWidget {
  final double height;
  final int weight;
  const ImcResolt({super.key, required this.weight, required this.height});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Backgrounds,
      appBar: toolBarResult(), //Asi podemos reducir el codigo del widget
      body: BodyResult(context),
    );
  }

  Padding BodyResult(BuildContext context) {
    double fixedHeigt = height / 100;
    double imcResolt = weight / (fixedHeigt * fixedHeigt);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        //para que este pegado a la isquierda
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Tu resultado",
            style: TextStyle(
              fontSize: 38,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 32, bottom: 32),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.BackgroundsComponents,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,//MainAxisAlignment.spaceAround distribuye los elementos con espaciado uniforme 
                  children: [
                    Text(getText(imcResolt), 
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: getColorByImc(imcResolt),
                    )),
                    Text(
                    imcResolt.toStringAsFixed(2),//el resultado del IMC
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 76,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Text(getDescrip(imcResolt), style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                        textAlign: TextAlign.center,
                        ),
                    )

                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 60,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
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
              child: Text("Finalizar", style: TextStyles.whiteText),
            ),
          ),
        ],
      ),
    );
  }

  AppBar toolBarResult() {
    return AppBar(
      title: Text("Resultado"),
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
    );
  }
  
  Color getColorByImc(double imcResolt) {
    return switch(imcResolt){
     < 18.5 => Colors.blue, //Imc Bajo
     < 24.9 => Colors.green,//Imc normal
     <29.99 => Colors.orange,//Sobrepeso
     _=>Colors.red//Obesidad
    };
  }

  String getText(double imcResolt){
    return switch(imcResolt){
    < 18.5 =>  "Bajo", //Imc Bajo
     < 24.9 =>  "Normal",//Imc normal
     <29.99 =>  "Sobrepeso",//Sobrepeso
     _=> "Obesidad"//Obesidad
    };
  }
  String getDescrip(double imcResolt){
    return switch (imcResolt){
      <18.5 => "Tu peso está por debajo del recomendado. Esto podría afectar tu energía y salud en general.",
      <24.9 => "Estás en un rango saludable. Mantén un estilo de vida equilibrado con buena alimentación y ejercicio.",
      <29.99 => "Tienes un peso superior al recomendado. Considera hábitos más saludables para evitar posibles complicaciones.",
      _=>"Tu peso está en un nivel que podría afectar tu salud. Consulta con un especialista para mejorar tu bienestar."
    };
  }



}
